import 'package:jetpow/core/models/responses/auth_response.dart';
import 'package:jetpow/core/models/responses/user_response.dart';
import 'package:jetpow/core/models/user.dart';
import 'package:jetpow/core/services/database_service.dart';

import '../../allocator.dart';
import 'local_storage_service.dart';

///
/// [AuthService] class contains all authentication related logic with following
/// methods:
///
/// [doSetup]: This method contains all the initial authentication like checking
/// login status, onboarding status and other related initial app flow setup.
///
/// [signupWithEmailAndPassword]: This method is used for signup with email and password.
///
/// [signupWithApple]:
///
/// [signupWithGmail]:
///
/// [signupWithFacebook]:
///
/// [logout]:
///

class AuthService {
  late bool isLogin;
  final _localStorageService = locator<LocalStorageService>();
  User user = User();
  final _dbService = locator<DatabaseService>();

  ///
  /// [doSetup] Function does the following things:
  ///   1) Checks if the user is logged then:
  ///       a) Get the user profile data
  ///       b) Updates the user FCM Token
  ///
  doSetup() async {
   // isLogin = _localStorageService.accessToken != null;
    if (isLogin) {
      print('User is already logged-in');
      await _getUserProfile();
    } else {
      print('User is not logged-in');
      isLogin = false;
    }
  }

  _getUserProfile() async {
    UserResponse response = await _dbService.getUserProfile();
    if (response.success) {
      user = response.profile;
      isLogin = true;
      print('Got User Data: ${user.toJson()}');
    } else {
      isLogin = false;
    }
  }

  signup(SignupBody body) async {
    AuthResponse response = await _dbService.createAccount(body);
    if (response.success) {
     // _localStorageService.accessToken = response.accessToken;
     // _localStorageService.refreshToken = response.refreshToken;
      await _getUserProfile();
    }
    return response;
  }

  login(LoginBody body) async {
    late AuthResponse response;
    response = await _dbService.login(body);
    if (response.success) {
     // _localStorageService.accessToken = response.accessToken;
      await _getUserProfile();
    }
    return response;
  }

  logout() async {
    isLogin = false;
    user = User();
    //_localStorageService.accessToken = null;
  }
}
