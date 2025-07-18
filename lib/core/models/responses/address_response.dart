import 'package:jetpow/core/models/base_responses/base_response.dart';
import 'package:jetpow/core/models/user.dart';

class AddressResponse extends BaseResponse {
  Address address = Address();

  AddressResponse(success, {error}) : super(success, error: error);

  AddressResponse.fromJson(json) : super.fromJson(json) {
    if (json['body'] != null) {
      address = Address.fromJson(json['body']);
    }
  }
}
