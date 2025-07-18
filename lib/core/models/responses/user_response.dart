import 'package:jetpow/core/models/base_responses/base_response.dart';
import 'package:jetpow/core/models/user.dart';

class UserResponse extends BaseResponse {
  User profile = User();
  List<User> users = [];

  UserResponse(success, {error}) : super(success, error: error);

  UserResponse.fromJson(json) : super.fromJson(json) {
    if (json['body'] != null) {
      profile = User.fromJson(json['body']);
    }
  }

  UserResponse.fromJsonList(json) : super.fromJson(json) {
    if (json['body'] != null) {
      json["body"].forEach((v) {
        users.add(User.fromJson(v));
      });
    }
  }
}
