// import 'dart:convert';
// import 'dart:io';
// import 'dart:typed_data';
// //import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// //import 'package:image_picker/image_picker.dart';
// //import 'package:logger/logger.dart';
// // ignore: depend_on_referenced_packages
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter/services.dart' show rootBundle;
//
// class FilePickerService {
//   File? selectedImage;
//   final _imagePicker = ImagePicker();
//   final FilePicker _filePicker = FilePicker.platform;
//
//   final Logger log = Logger();
//
//   pickImage() async {
//     return await pickImageWithoutCompression();
//   }
//
//   pickCameraImage() async {
//     File? selectedImage;
//     // final image50 = await _imagePicker.pickImage(
//     //     source: ImageSource.gallery, imageQuality: 40);
//     final image100 = await _imagePicker.pickImage(source: ImageSource.camera);
//     if (image100 != null) selectedImage = File(image100.path);
//
//     // log.d('Image50 Size: ${await image50?.length()}');
//     log.d('Image100 Size: ${await image100?.length()}');
//
//     return selectedImage;
//   }
//
//   Future<List<File>?> pickMultipleImagesFromGallery() async {
//     List<File>? selectedImages;
//     final pickedFiles = await _imagePicker.pickMultiImage(imageQuality: 100);
//     if (pickedFiles.isNotEmpty) {
//       selectedImages = pickedFiles.map((e) => File(e.path)).toList();
//       if (selectedImages.length > 15) {
//         selectedImages = selectedImages.sublist(0, 15);
//       }
//     }
//
//     return selectedImages;
//   }
//
//   Future<List<File>?> pickMultipleFilesFromDevice() async {
//     List<File>? selectedFiles;
//     final pickedFiles = await _filePicker.pickFiles(allowMultiple: true);
//     if (pickedFiles != null) {
//       selectedFiles = pickedFiles.files.map((e) => File(e.path!)).toList();
//     }
//
//     return selectedFiles;
//   }
//
//   pickImageWithoutCompression() async {
//     File? selectedImage;
//     final filePicker = FilePicker.platform;
//     FilePickerResult? Product = await filePicker.pickFiles(
//       type: FileType.image,
//       allowMultiple: false,
//     );
//
//     if (Product != null) {
//       selectedImage = File(Product.paths.first!);
//       final extension = p.extension(selectedImage.path);
//       debugPrint('@FilePcikerService.pickImage ==> Extension: $extension');
//       // if (extension == '.heic') {
//       //   String? jpegPath = await HeicToJpg.convert(selectedImage.path);
//       //   if (jpegPath != null) selectedImage = File(jpegPath);
//       // }
//       // final dir = path_prvoider.getTemporaryDirectory();
//       // final newPath = '$dir/test.jpg';
//       // final compressedImage = await _compressImageFile(selectedImage, newPath);
//       // if (compressedImage != null) {
//       //   selectedImage = compressedImage;
//       // }
//     }
//     return selectedImage;
//   }
//
//   Future<File> writeBytesToFile(Uint8List data) async {
//     // Get the application documents directory
//     final directory = await getApplicationDocumentsDirectory();
//     // Create an image file path in the directory
//     String imagePath = '${directory.path}/myImage.png';
//     // Write the byte data to the file
//     File imageFile = File(imagePath);
//     await imageFile.writeAsBytes(data);
//     return imageFile;
//   }
//
//   pickMultipleVideoFile() async {
//     List<File> videoFile = [];
//     final filePicker = FilePicker.platform;
//     FilePickerResult? Product = await filePicker.pickFiles(
//       type: FileType.image,
//       allowMultiple: true,
//     );
//
//     if (Product != null) {
//       debugPrint("Picked files ==>${Product.files.length} ");
//       for (var i = 0; i < Product.files.length; i++) {
//         // videoFile = File(Product[i].paths!);
//         videoFile.add(File(Product.files[i].path!));
//
//         // final extension = file_path.extension(videoFile.path);
//         // debugPrint('@FilePcikerService.pickImage ==> Extension: $extension');
//       }
//       debugPrint("Picked files ==>${videoFile.length} ");
//
//       return videoFile;
//     }
//   }
//
//   Future<Uint8List> assetImageToBytes(String assetPath) async {
//     // Load the asset image as a byte array
//     final ByteData data = await rootBundle.load(assetPath);
//     debugPrint("bytes: ${data.buffer.asUint8List().length}");
//     return data.buffer.asUint8List();
//   }
//
//   Future<File> assetImageToFile(String assetPath) async {
//     // Load the asset image as a byte array
//     debugPrint("get iamge from path: $assetPath");
//     final ByteData data = await rootBundle.load(assetPath);
//     final Uint8List bytes = data.buffer.asUint8List();
//
//     // Get the directory to store the file
//     final Directory tempDir = await getTemporaryDirectory();
//     final String tempPath = tempDir.path;
//     final File file = File('$tempPath/your_image.png');
//
//     // Write the bytes to a file
//     await file.writeAsBytes(bytes);
//     return file;
//   }
//
//   deleteLocalFile(File file) async {
//     await file.delete();
//   }
//
//   Future<String> fileToBase64(String filePath) async {
//     try {
//       // Read the file from the given path
//       final file = File(filePath);
//
//       // Read the file as bytes
//       final bytes = await file.readAsBytes();
//
//       // Convert bytes to Base64
//       final base64String = base64Encode(bytes);
//
//       return base64String;
//     } catch (e) {
//       debugPrint('Error reading file: $e');
//       rethrow;
//     }
//   }
//
//   // Future<File?> _compressImageFile(File file, String targetPath) async {
//   //   debugPrint(
//   //       '@compressImageFile => Size before compression: ${await file.length()}');
//   //   var Product = await FlutterImageCompress.compressAndGetFile(
//   //     file.absolute.path,
//   //     targetPath,
//   //     quality: 70,
//   //   );
//
//   //   if (Product != null) {
//   //     print('File compressed successfully');
//   //   } else {
//   //     print('Compressed file path is null');
//   //   }
//
//   //   debugPrint(
//   //       '@compressImageFile => Size after compression: ${await Product?.length()}');
//   //   return Product;
//   // }
// }
