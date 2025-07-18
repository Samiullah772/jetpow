class BaseResponse {
  late bool success;
  String? error;

  BaseResponse(this.success, {this.error});

  BaseResponse.fromJson(json) {
    success = json['success'];
    error = json['message'].toString();
  }

  toJson() {
    return {'success': success, 'error': error};
  }
}
