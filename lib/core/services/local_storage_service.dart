import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  //static SharedPreferences? _preferences;

  ///
  /// List of const keys
  ///
  static const String onboardingCountKey = 'onBoardingCount';
  static const String notificationsCountKey = 'snotificationsCount';
  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';
  static const String temporarayId = 'temporaryId';
  static const String langugeCode = 'langugeCode';
  static const String selectedAi = 'selectedAi';
  static const String zipCode = 'zipCode';
  static const String cachePath = 'cachePath';
  static const String continueAsGuest = 'continueAsGuest';
  static const String hasSeenOnboardingKey = 'hasSeenOnboarding';

  ///
  /// Setters and getters
  ///
  // int get onBoardingPageCount => _getFromDisk(onboardingCountKey) ?? 0;
  //
  // set onBoardingPageCount(int count) => _saveToDisk(onboardingCountKey, count);
  //
  // int? get getTemporaryId => _getFromDisk(temporarayId);
  //
  // set setTemporaryId(int count) => _saveToDisk(temporarayId, count);
  //
  // String? get getZipCode => _getFromDisk(zipCode);
  //
  // set setZipCode(String count) => _saveToDisk(zipCode, count);
  //
  // String? get getCachePath => _getFromDisk(cachePath);
  //
  // set setCachePath(String count) => _saveToDisk(cachePath, count);
  //
  // int get setNotificationsCount => _getFromDisk(notificationsCountKey) ?? 0;
  //
  // set setNotificationsCount(int count) =>
  //     _saveToDisk(notificationsCountKey, count);
  //
  // dynamic get accessToken => _getFromDisk(accessTokenKey);
  //
  // set accessToken(token) => _saveToDisk(accessTokenKey, token);
  //
  // dynamic get refreshToken => _getFromDisk(refreshTokenKey);
  //
  // set refreshToken(token) => _saveToDisk(refreshTokenKey, token);
  //
  // dynamic get languageCode => _getFromDisk(langugeCode);
  //
  // set languageCode(token) => _saveToDisk(langugeCode, token);
  //
  // bool get hasSeenOnboarding => _getFromDisk(hasSeenOnboardingKey) ?? false;
  //
  // set hasSeenOnboarding(bool v) => _saveToDisk(hasSeenOnboardingKey, v);
  //
  // bool hasSeenTour(String id) {
  //   return _getFromDisk(id) ?? false;
  // }
  //
  // void markTourSeen(String id) => _saveToDisk(id, true);

//   updateSelectedLanguage(String langCode) async {
//     await init();
//     await _preferences!.setString('lang_code', langCode);
//   }
//
//   getSelectedLanguage() async {
//     await init();
//     return _preferences!.getString("lang_code") ?? 'fr';
//   }
//
//   Future<void> saveHasSeenOnboarding() async {
//     if (_preferences == null) await init();
//     _saveToDisk<bool>(hasSeenOnboardingKey, true);
//   }
//
//   dynamic get getAI => _getFromDisk(selectedAi);
//
//   set setAi(token) => _saveToDisk(selectedAi, token);
//
//   dynamic get getContinueAsGues => _getFromDisk(continueAsGuest);
//
//   set setContinueAsGues(token) => _saveToDisk(continueAsGuest, token);
//
// ////
//   ///initializing instance
//   ///
//   init() async {
//     _preferences = await SharedPreferences.getInstance();
//   }
//
//   dynamic _getFromDisk(String key) {
//     var value = _preferences!.get(key);
//     // print('(TRACE) Localazé"'(çStorageService:_getFromDisk. key: $key value: $value');
//     return value;
//   }
//
//   void _saveToDisk<T>(String key, T? content) {
//     debugPrint(
//         '(TRACE) LocalStorageService:_saveToDisk. key: $key value: $content');
//
//     if (content is String) {
//       _preferences!.setString(key, content);
//     }
//     if (content is bool) {
//       _preferences!.setBool(key, content);
//     }
//     if (content is int) {
//       _preferences!.setInt(key, content);
//     }
//     if (content is double) {
//       _preferences!.setDouble(key, content);
//     }
//     if (content is List<String>) {
//       _preferences!.setStringList(key, content);
//     }
//
//     if (content == null) {
//       _preferences!.remove(key);
//     }
//   }

// static Future<LocalStorageService> getInstance() async {
//   if (_instance == null) {
//     _instance = LocalStorageService();
//   }
//   if (_preferences == null) {
//     _preferences = await SharedPreferences.getInstance();
//   }
//   return _instance!;
// }
}
