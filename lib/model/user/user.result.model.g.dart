// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.result.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      horoscope: json['horoscope'] as String?,
      zodiac: json['zodiac'] as String?,
      height: json['height'] as int?,
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'gender': instance.gender,
      'horoscope': instance.horoscope,
      'zodiac': instance.zodiac,
      'height': instance.height,
      'weight': instance.weight,
    };
