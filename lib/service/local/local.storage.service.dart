import 'package:flutter_secure_storage/flutter_secure_storage.dart';

///singleton class
class LocalStorageService {
  LocalStorageService._();
  static LocalStorageService? _instance;
  static LocalStorageService get instance =>
      _instance ?? LocalStorageService._();
  final _storage = const FlutterSecureStorage();
  final String _token = 'krJly0rK596tXvNQQbQZ';
  final String _isLoggedIn = 'false';

  /*-------------------------------LoggedIn--------------------------------------------------- */

  ///set isLoggedIn
  ///set isLoggedIn means to set user has success to login=true
  void setIsLoggedIn() async {
    await _storage.write(key: _isLoggedIn, value: 'true');
  }

  ///get isLoggedIn
  dynamic getIsLoggedIn() async {
    final data = await _storage.read(key: _isLoggedIn);
    return data;
  }

  /*-------------------------------TOKEN--------------------------------------------------- */

  ///set Token
  void setToken(String token) async {
    await _storage.write(key: _token, value: token);
  }

  ///get Token
  dynamic getToken() async {
    final data = await _storage.read(key: _token);
    return data;
  }

  ///delete all local data
  Future<void> deleteAll() async => await _storage.deleteAll();
}
