// import 'package:jetpow/core/models/kyc.dart';
// import 'package:jetpow/core/models/responses/kyc_response.dart';
// import 'package:jetpow/core/services/auth_service.dart';
// import 'package:jetpow/core/services/database_service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_idensic_mobile_sdk_plugin/flutter_idensic_mobile_sdk_plugin.dart';
//
// import '../../allocator.dart';
//
// class KycVerificationService {
//   final db = locator<DatabaseService>();
//   final _auth = locator<AuthService>();
//   KYCRequest _kyc = KYCRequest();
//   launchSDK(String accessToken) async {
//     onTokenExpiration() async {
//       print("token expiration function ================== ");
//
//       _kyc.kycTier = 1;
//       _kyc.strigaUserId = _auth.user.strigaUserId;
//       KycResponse response = await db.startKYC(_kyc, _auth.user.id!);
//       return response.kycRequest.token;
//     }
//
//     onStatusChanged(
//       SNSMobileSDKStatus newStatus,
//       SNSMobileSDKStatus prevStatus,
//     ) {
//       print("The SDK status was changed: $prevStatus -> $newStatus");
//       return;
//     }
//
//     final snsMobileSDK =
//         SNSMobileSDK.init(accessToken, onTokenExpiration)
//             .withHandlers(
//               // optional handlers
//               onStatusChanged: onStatusChanged,
//             )
//             .withDebug(true) // set debug mode if required
//             .withLocale(
//               Locale("en"),
//             ) // optional, for cases when you need to override the system locale
//             .build();
//
//     final SNSMobileSDKResult result = await snsMobileSDK.launch();
//
//     print("Completed with result: ${result}");
//
//     return result;
//   }
// }
