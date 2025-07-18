// import 'package:chedmed_app/core/services/auth_service.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../locator.dart';
// import '../models/other_models/product.dart';
// import '../models/reponses/base_responses/base_response.dart';
// import 'database_service.dart';

// class GlobalFunctions extends ChangeNotifier {
//   final _db = locator<DatabaseService>();
//   final _auth = locator<AuthService>();
//   favorite(Product product) async {
//     product.isLiked = !product.isLiked!;
//     notifyListeners();
//     BaseResponse requestResponse =
//         await _db.likeProduct(_auth.userProfile!.id!, product.id!);
//     if (requestResponse.success == true) {
//       Get.snackbar('success!', "Item successfuly added to wishlist!");
//     }
//     notifyListeners();
//   }
// }
