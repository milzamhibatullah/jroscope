import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jroscope/model/user/user.respository.dart';
import 'package:jroscope/model/network/base.api.network.dart';
import 'package:http/http.dart' show Client;
import 'package:jroscope/service/local/local.storage.service.dart';

class UserService extends BaseApiNetwork implements UserRepository {
  Client client = Client();

  @override
  Future<bool> login(String email, String password) async {
    try {
      final data = jsonEncode({'email': email, 'password': password});
      final url = Uri.parse('$baseUrl/api/login');

      /// request to http
      final resp = await client.post(url, body: data, headers: headers).timeout(
            const Duration(seconds: 60),
          );

      print(resp.statusCode);
      print(resp.body);
      if (resp.statusCode == 200) {
        final token = jsonDecode(resp.body)['token'];
        LocalStorageService.instance.setIsLoggedIn();
        LocalStorageService.instance.setToken(token);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      debugPrint('error $e');
      return false;
    }
  }
}
