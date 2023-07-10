import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:jroscope/service/user/user.service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login.test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('do sign in using email and password', () {
    test('the response returns is successfull and returns token', () async {
      final userService = UserService();
      final client = MockClient();

      /// mock to return successfully call;
      when(
        client.post(
          Uri.parse('https://jscope.free.beeceptor.com/login'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(
              {"email": "milzam@email.com", "password": "milzam123"}),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          '''{
    "success": true,
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWlsemFtIEhpYmF0dWxsYWgiLCJlbWFpbCI6ImhtaWx6YW1AZ21haWwuY29tIn0.QYGEJ48oFGJaXAXwO8ssT6-zzNzFJg6alX9eynU9SXw"
}''',
          200,
        ),
      );

      userService.client = client;
      final token = await userService.login('milzam@email.com', 'milzam123');
      expect(token, isNotEmpty);
      expect(token, isA<String>());
      expect(
        token,
        equals(
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiTWlsemFtIEhpYmF0dWxsYWgiLCJlbWFpbCI6ImhtaWx6YW1AZ21haWwuY29tIn0.QYGEJ48oFGJaXAXwO8ssT6-zzNzFJg6alX9eynU9SXw'),
      );
    });
  });
}
