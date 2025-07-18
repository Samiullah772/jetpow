class RequestResponse {
  late bool success;
  String? error;
  late Map<String, dynamic> data;

  RequestResponse(this.success, {this.error});

  RequestResponse.fromJson(json) {
    data = json;
    success = json['success'] ?? true;
    error = json['message'].toString();
  }

  toJson() {
    return {'success': success, 'message': error, 'data': data};
  }

}
