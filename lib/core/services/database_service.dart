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
}
