import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:jroscope/model/user/user.model.dart';
import 'package:jroscope/model/user/user.result.model.dart';
import 'package:mockito/mockito.dart';

void main() {
  group('unit test on user class model', () {
    test('Make sure results from user return null', () {
      final User user = User();
      expect(user.result, equals(null));
    });

    ///json sample used for test user.fromJson function

    final jsonSample = jsonDecode(
      jsonEncode({
        "success": true,
        "result": {
          "id": "eb2ba701-2ab3-468c-9624-c1b0f83fef3c",
          "name": "Milzam Hibatullah",
          "username": "milzamhb",
          "email": "milzam@email.com",
          "gender": "male",
          "horoscope": "-",
          "zodiac": "-",
          "height": 168,
          "weight": 105
        }
      }),
    );
    final User user = User.fromJson(jsonSample);

    test('User result is not null and name is Milzam Hibatullah', () {
      expect(user.result, isNotNull);
      expect(user.result!.name, equals('Milzam Hibatullah'));
    });

    test(
      "Height of user is greater than zero",
      () => expect(
        user.result!.height,
        greaterThan(0),
      ),
    );

    test(
      "Weight of user is integer",
          () => expect(
        user.result!.weight,
        isA<int>(),
      ),
    );
  });
}
