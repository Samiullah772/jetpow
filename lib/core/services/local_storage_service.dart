import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService{

  static SharedPreferences? _preferences;
  // list of constant keys

  static const String accessToken = 'accessToken';
  static const String templateNo  = 'templateNo';
  static const String temporaryId = 'temporaryId';
  static const String languageCode= '';
  static const String zipCode ='zipCode';



  void initPreference()async{
    _preferences =await SharedPreferences.getInstance();
  }


  void _saveToDisk<T>(String key,T? content){

    if(content is String){
      _preferences!.setString(key,content);
    }

    if(content is int){
      _preferences!.setInt(key,content);
    }

    if(content is bool){
      _preferences!.setBool(key,content);
    }

    if(content is double){
      _preferences!.setDouble(key,content);
    }

    if(content is List<String>){
      _preferences!.setStringList(key,content);
    }

  }

  dynamic _getFromDisk(String key){

  }




}