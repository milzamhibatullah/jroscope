import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.result.model.dart';

part 'user.model.freezed.dart';

part 'user.model.g.dart';

@freezed
class User with _$User {
  const factory User({
    bool? success,
    Result? result,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json)
  => _$UserFromJson(json);
}
