import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';

Future<List<dio.MultipartFile>> filesToMultiparts(List<File> images) async {
  List<dio.MultipartFile> imagesList = [];
  for (var element in images) {
    imagesList.add(await dio.MultipartFile.fromFile(element.path));
  }
  debugPrint("FilesToMultiPart: ${imagesList.length}");
  return imagesList;
}

Future<dio.MultipartFile> filesToMultipart(File images) async {
  dio.MultipartFile multipartFile =
      await dio.MultipartFile.fromFile(images.path);

  return multipartFile;
}
