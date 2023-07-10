import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jroscope/model/user/user.respository.dart';
import 'package:jroscope/model/network/base.api.network.dart';
import 'package:http/http.dart' show Client;

class UserService extends BaseApiNetwork implements UserRepository {
  Client client = Client();

  @override
  Future<String> login(String email, String password) async {
    try {
      final data = jsonEncode({'email': email, 'password': password});
      final url = Uri.parse('$baseUrl/login');

      /// request to http
      final resp = await client.post(url, body: data, headers: headers).timeout(
            const Duration(seconds: 60),
          );
      if (resp.statusCode == 200) {
        final token = jsonDecode(resp.body)['token'];
        return token;
      } else {
        throw 'error';
      }
    } catch (e) {
      debugPrint('error $e');
      throw 'error';
    }
  }
}
