import 'package:flutter/material.dart';

class Onboarding {
  String? imgUrl;
  String? title;
  String? body;

  Onboarding({this.imgUrl, this.title, this.body});

  Onboarding.fromJson(json) {
    debugPrint('$json');
    title = json["title"];
    imgUrl = json['image_url'];
    body = json["body"];
  }
}
