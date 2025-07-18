// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:logger/logger.dart';
// import 'package:narhandel_mobile_app/core/services/database_service.dart';
// import 'package:narhandel_mobile_app/core/services/file_picker_service.dart';

// import '../../locator.dart';
// import '../constants/strings.dart';
// import '../models/other_models/item_image.dart';
// import '../models/other_models/product.dart';
// import '../models/reponses/item_image_response.dart';
// import '../models/reponses/item_response.dart';
// import '../models/reponses/remove_bg_response.dart';
// import 'auth_service.dart';

// class ImageProcessingService {
//   final filePicker = FilePickerService();
//   List<Product> pendingItems = [];
//   bool isProcessed = true;
//   bool isEdit = false;
//   bool isLoading = false;
//   final _authService = locator<AuthService>();
//   int drafts = 0;
//   int selectedIndex = 0;
//   late TabController tabController;
//   List<int> removedIndexes = [];
//   int previousValue = 0;
//   Logger log = Logger();
//   List<Product> draftsList = [];
//   List<Product> publishedList = [];
//   final _dbService = DatabaseService();

//   Future<void> pickGalleryImage() async {
//     _setLoadingState(true);
//     _removeProcessedPendingItems();

//     List<File>? files = await filePicker.pickMultipleVideoFile();
//     _setLoadingState(false);

//     if (files != null) {
//       selectedIndex = 0;
//       tabController.index = 0;
//       await processImages(files);
//     }
//     _setIdleState();
//   }

//   Future<void> pickCameraImage() async {
//     _setLoadingState(true);
//     _removeProcessedPendingItems();

//     List<File> files = [];
//     File? image = await filePicker.pickCameraImage();

//     if (image != null) {
//       selectedIndex = 0;
//       tabController.index = 0;
//       files.add(image);
//       _setLoadingState(false);
//       await processImages(files);
//     }
//     _setLoadingState(false);
//     _setIdleState();
//   }

//   Future<void> processImages(List<File> files) async {
//     List<Future<void>> processingTasks = [];
//     for (int i = 0; i < files.length; i++) {
//       pendingItems.add(Product(image: files[i]));
//       processingTasks.add(processImage(previousValue + i));
//     }
//     previousValue = pendingItems.length;
//     await Future.wait(processingTasks);
//   }

//   Future<void> processImage(int index,
//       {Product? Product2, bool isReload = false}) async {
//     Product Product = await removeItemBG(index, Product2: Product2);
//     if (Product.isFailed == false || Product.isFailed == null) {
//       await fetchProductInfo(index, Product2: Product2, isReload: isReload);
//     }
//   }

//   Future<Product> removeItemBG(int index, {Product? Product2}) async {
//     Product Product = Product2 ??
//         Product(
//             isPending: true,
//             id: draftsList.length + 1,
//             isGPT: isOpenAI,
//             image: pendingItems[index].image,
//             itemImage: ItemImage());

//     if (Product2 == null) {
//       draftsList.add(Product);
//     }

//     try {
//       RemoveBGResponse removeBGResponse =
//           await _dbService.removeBG(pendingItems[index].image);
//       Product.itemImage!.originalImgUrl = removeBGResponse.imageUrl;

//       if (removeBGResponse.intList.isNotEmpty) {
//         Product.bytes = removeBGResponse.intList;
//       } else {
//         _handleBGRemovalFailure(Product);
//       }
//     } catch (error) {
//       _handleBGRemovalFailure(Product, error);
//     }

//     pendingItems[index] = Product;
//     return Product;
//   }

//   Future<void> fetchProductInfo(int index,
//       {Product? Product2, bool isReload = false}) async {
//     if (pendingItems[index].bytes == null) {
//       _updateDraftList(index);
//       return;
//     }

//     try {
//       ItemResponse itemResponse = await _dbService.getItemDetails(
//           pendingItems[index].bytes!, pendingItems[index]);
//       await saveProduct(
//           itemResponse.item ?? Product(),
//           pendingItems[index].itemImage ?? ItemImage(),
//           itemResponse,
//           index,
//           isReload,
//           pendingItems[index].bytes!,
//           isSuccess: itemResponse.item != null);
//     } catch (e) {
//       await saveProduct(Product(), pendingItems[index].itemImage ?? ItemImage(),
//           ItemResponse(false), index, isReload, pendingItems[index].bytes!,
//           isSuccess: false);
//     }
//   }

//   Future<void> saveProduct(Product Product, ItemImage itemImage,
//       ItemResponse itemResponse, int index, bool isReload, List<int> imageUrl,
//       {bool isSuccess = false}) async {
//     if (!isSuccess) {
//       _updateDraftListWithProduct(
//           Product, itemResponse, index, imageUrl, isReload);
//       return;
//     }

//     itemImage.useProcessedImg = isProcessed;
//     itemImage.imgUrl = itemImage.useProcessedImg == true
//         ? itemImage.processedImgUrl
//         : itemImage.originalImgUrl;

//     try {
//       ItemImageResponse itemImageResponse =
//           await _dbService.saveProductImage(itemImage);
//       Product.image = pendingItems[index].image;
//       Product.imageUrl = itemResponse.imageUrl;
//       Product.bytes = imageUrl;

//       Product product = Product(
//           title: Product.title,
//           description: Product.description,
//           brand: Product.brand,
//           condition: Product.condition,
//           color: Product.color,
//           size: Product.size,
//           price: Product.price,
//           recommendedPrice: Product.recommendedPrice,
//           userId: _authService.userProfile?.id,
//           style: Product.style,
//           categoryId: 1,
//           isPublished: false,
//           weight: Product.weight);

//       ItemResponse savedItemResponse =
//           await _dbService.saveProduct(product, [itemImageResponse.id!], true);
//       if (savedItemResponse.success) {
//         _updateDraftListWithProduct(
//             savedItemResponse.item!, itemResponse, index, imageUrl, isReload);
//         Get.snackbar("Success", "Product saved successfully!",
//             colorText: Colors.white, backgroundColor: Colors.black);
//       } else {
//         Get.snackbar(
//             "Error!",
//             savedItemResponse.error ??
//                 "An unexpected error occurred, try again later",
//             colorText: Colors.white,
//             backgroundColor: Colors.black);
//       }
//     } catch (e) {
//       Get.snackbar("Error!", "An unexpected error occurred, try again later",
//           colorText: Colors.white, backgroundColor: Colors.black);
//     } finally {
//       removedIndexes.add(index);
//       previousValue--;
//       _setIdleState();
//     }
//   }

//   void _updateDraftListWithProduct(Product Product, ItemResponse itemResponse,
//       int index, List<int> imageUrl, bool isReload) {
//     int draftIndex =
//         draftsList.indexWhere((r) => r.id == pendingItems[index].id);
//     if (draftIndex != -1) {
//       Product.id = pendingItems[index].id;
//       Product.isGPT = pendingItems[index].isGPT;
//       Product.bytes = imageUrl;
//       Product.image = pendingItems[index].image;
//       draftsList[draftIndex] = Product;
//       if (!isReload) drafts++;
//     }
//   }

//   void _handleBGRemovalFailure(Product Product, [dynamic error]) {
//     if (error != null) {
//       debugPrint("Error removing background: $error");
//     }
//     Product.isFailed = true;
//     Product.isPending = false;
//     _updateDraftList(Product.id!);
//   }

//   void _updateDraftList(int id) {
//     int draftIndex = draftsList.indexWhere((r) => r.id == id);
//     if (draftIndex != -1) {
//       draftsList[draftIndex].isFailed = true;
//       draftsList[draftIndex].isPending = false;
//     }
//   }

//   void _removeProcessedPendingItems() {
//     for (var index in removedIndexes) {
//       pendingItems.removeAt(index);
//     }
//     removedIndexes.clear();
//   }

//   void _setLoadingState(bool state) {
//     isLoading = state;
//     setState(ViewState.idle);
//   }

//   void _setIdleState() {
//     setState(ViewState.idle);
//   }
// }
