import 'package:dio/dio.dart';
import 'package:jetpow/core/models/base_responses/request_response.dart';
import 'package:flutter/material.dart';
import '../../allocator.dart';
import 'local_storage_service.dart';

class ApiServices {
  launchDio({isRefreshToken = false}) async {
    String? accessToken;
    if (isRefreshToken == true) {
      //accessToken = locator<LocalStorageService>().refreshToken;
    } else {
      //accessToken = locator<LocalStorageService>().accessToken;
    }

    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    // dio.interceptors.add(
    //     DioCacheManager(CacheConfig(baseUrl: EndPoint.baseUrl)).interceptor);
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers["accept"] = 'application/json';
    dio.options.headers["Authorization"] = 'Bearer $accessToken';

    dio.options.followRedirects = false;
    dio.options.validateStatus = (s) {
      if (s != null) {
        return s < 500;
      } else {
        return false;
      }
    };
    return dio;
  }

  get({required String url, params, isRefreshToken = false}) async {
    Dio dio = await launchDio(isRefreshToken: isRefreshToken);
    final response = await dio.get(url, queryParameters: params).catchError((
      e,
    ) {
      debugPrint('Unexpected Error');
      RequestResponse requestResponse = RequestResponse(
        false,
        error: 'Unexpected Error occured, try again later',
      );
      // ignore: invalid_return_type_for_catch_error
      return RequestResponse.fromJson(requestResponse);
    });
    if (response.statusCode == 200) {
      return RequestResponse.fromJson(response.data);
    } else if (response.statusCode == 500) {
      return RequestResponse(false, error: 'Server Error');
    } else {
      return RequestResponse(false, error: 'Network Error');
    }
  }

  post({required String url, data}) async {
    Dio dio = await launchDio();
    final response = await dio.post(url, data: data).catchError((e) {
      debugPrint('Unexpected Error');
      RequestResponse requestResponse = RequestResponse(
        false,
        error: 'Unexpected Error occured, try again later',
      );
      // ignore: invalid_return_type_for_catch_error
      return RequestResponse.fromJson(requestResponse);
    });
    if (response.statusCode == 200) {
      return RequestResponse.fromJson(response.data);
    } else if (response.statusCode == 500) {
      return RequestResponse(false, error: 'Server Error');
    } else {
      return RequestResponse(false, error: 'Network Error');
    }
  }

  put({required String url, data}) async {
    Dio dio = await launchDio();
    final response = await dio.put(url, data: data).catchError((e) {
      debugPrint('Unexpected Error');
      RequestResponse requestResponse = RequestResponse(
        false,
        error: 'Unexpected Error occured, try again later',
      );
      // ignore: invalid_return_type_for_catch_error
      return RequestResponse.fromJson(requestResponse);
    });
    if (response.statusCode == 200) {
      return RequestResponse.fromJson(response.data);
    } else if (response.statusCode == 500) {
      return RequestResponse(false, error: 'Server Error');
    } else {
      return RequestResponse(false, error: 'Network Error');
    }
  }

  delete({required String url, params}) async {
    Dio dio = await launchDio();
    final response = await dio.delete(url, queryParameters: params).catchError((
      e,
    ) {
      debugPrint('Unexpected Error');
      RequestResponse requestResponse = RequestResponse(
        false,
        error: 'Unexpected Error occured, try again later',
      );
      // ignore: invalid_return_type_for_catch_error
      return RequestResponse.fromJson(requestResponse);
    });
    if (response.statusCode == 200) {
      return RequestResponse.fromJson(response.data);
    } else if (response.statusCode == 500) {
      return RequestResponse(false, error: 'Server Error');
    } else {
      return RequestResponse(false, error: 'Network Error');
    }
  }
}
