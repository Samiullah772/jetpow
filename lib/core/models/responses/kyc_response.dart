import 'package:jetpow/core/models/base_responses/base_response.dart';
import 'package:jetpow/core/models/kyc.dart';

class KycResponse extends BaseResponse {
  KYCRequest kycRequest = KYCRequest();

  KycResponse(success, {error}) : super(success, error: error);

  KycResponse.fromJson(json) : super.fromJson(json) {
    if (json['body'] != null) {
      kycRequest = KYCRequest.fromJson(json['body']);
    }
  }
}
