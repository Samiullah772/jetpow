import 'package:jetpow/core/models/base_responses/base_response.dart';
import 'package:jetpow/core/models/user.dart';
import 'package:flutter/material.dart';
import '../../../allocator.dart';
import '../../services/auth_service.dart';
import '../../services/local_storage_service.dart';

class AuthResponse extends BaseResponse {
  String? accessToken;
  String? refreshToken;
  User? user;
  bool is2FAEnabled = false;
  final _localStorageService = locator<LocalStorageService>();
  final _authService = locator<AuthService>();

  /// Default constructor
  AuthResponse(succes, {error, this.accessToken, this.user})
    : super(succes, error: error);

  /// Named Constructor
  AuthResponse.fromJson(json) : super.fromJson(json) {
    if (json['body'] != null) {
      debugPrint("refreshToken: ${json['body']['refresh_token']}");
      is2FAEnabled = json['body']['is_2fa_enabled'] ?? false;
     // _localStorageService.accessToken = json['body']['token'];
      //_localStorageService.refreshToken = json['body']['refresh_token'];
      accessToken = json['body']['token'];
      refreshToken = json['body']['refresh_token'];
      if (json["body"]["user"] != null) {
        //_localStorageService.setTemporaryId = json["body"]["user"]["id"];
        debugPrint("USERID === ${json["body"]["user"]["id"]}");
        _authService.user = User.fromJson(json["body"]["user"]);
        user = User.fromJson(json["body"]["user"]);
      }
    }
  }
}
