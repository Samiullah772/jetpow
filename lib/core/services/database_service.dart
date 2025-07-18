import 'dart:io';
import 'package:jetpow/core/constants/api_end_pionts.dart';
import 'package:jetpow/core/models/base_responses/base_response.dart';
import 'package:jetpow/core/models/base_responses/request_response.dart';
import 'package:jetpow/core/models/kyc.dart';
import 'package:jetpow/core/models/responses/address_response.dart';
import 'package:jetpow/core/models/responses/auth_response.dart';
import 'package:jetpow/core/models/responses/kyc_response.dart';
import 'package:jetpow/core/models/responses/user_response.dart';
import 'package:jetpow/core/models/user.dart';
import 'api_services.dart';

String backgroundImagePath = '';
File? backgroundImgFile;

class DatabaseService {
  final ApiServices _apiServices = ApiServices();

  getUserProfile() async {
    final RequestResponse response = await _apiServices.get(
      url: '${EndPoints.baseUrl}${EndPoints.userProfile}',
    );
    return UserResponse.fromJson(response.data);
  }

  updateUserProfile(User user) async {
    final RequestResponse response = await _apiServices.put(
      url: '${EndPoints.baseUrl}/user/update/${user.id}',
      data: user.toJson(),
    );
    return UserResponse.fromJson(response.data);
  }

  login(LoginBody body) async {
    final RequestResponse response = await _apiServices.post(
      url: '${EndPoints.baseUrl}${EndPoints.login}',
      data: body.toJson(),
    );
    return AuthResponse.fromJson(response.data);
  }

  createAccount(SignupBody body) async {
    final RequestResponse response = await _apiServices.post(
      url: '${EndPoints.baseUrl}${EndPoints.signup}',
      data: body.toJson(),
    );
    return AuthResponse.fromJson(response.data);
  }

  verifyPhoneOtp(String userId, String otp) async {
    final RequestResponse response = await _apiServices.post(
      url: '${EndPoints.baseUrl}${EndPoints.verifyOtp}',
      data: {"user_id": userId, "otp": otp},
    );
    return BaseResponse.fromJson(response.data);
  }

  resendEmailOtp(String userId) async {
    final RequestResponse response = await _apiServices.post(
      url: '${EndPoints.baseUrl}/auth/otp/email/resend',
      data: {"user_id": userId},
    );
    return BaseResponse.fromJson(response.data);
  }

  resendPhoneOtp(String userId) async {
    final RequestResponse response = await _apiServices.post(
      url: '${EndPoints.baseUrl}/auth/otp/phone/resend',
      data: {"user_id": userId},
    );
    return BaseResponse.fromJson(response.data);
  }

  verifyEmailOtp(String userId, String otp) async {
    final RequestResponse response = await _apiServices.post(
      url: '${EndPoints.baseUrl}${EndPoints.verifyemailOtp}',
      data: {"user_id": userId, "otp": otp},
    );
    return BaseResponse.fromJson(response.data);
  }

  addAddress(Address address) async {
    final RequestResponse response = await _apiServices.post(
      url: '${EndPoints.baseUrl}/address/add',
      data: address.toJson(),
    );
    return AddressResponse.fromJson(response.data);
  }

  startKYC(KYCRequest body, userId) async {
    final RequestResponse response = await _apiServices.post(
      url: '${EndPoints.baseUrl}${EndPoints.startKyc}/$userId',
      data: body.toJson(),
    );
    return KycResponse.fromJson(response.data);
  }

  updateKYCStatus(KYCRequest body) async {
    final RequestResponse response = await _apiServices.put(
      url: '${EndPoints.baseUrl}${EndPoints.updateKYC}',
      data: body.updateKYC(),
    );
    return KycResponse.fromJson(response.data);
  }
}
