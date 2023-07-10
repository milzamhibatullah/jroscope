import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.result.model.freezed.dart';
part 'user.result.model.g.dart';
@freezed
class Result with _$Result {
  const factory Result({
    String? id,
    String? name,
    String? username,
    String? email,
    String? gender,
    String? horoscope,
    String? zodiac,
    int? height,
    int? weight,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json)
  => _$ResultFromJson(json);
}
