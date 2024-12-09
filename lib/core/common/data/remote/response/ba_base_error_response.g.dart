// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ba_base_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BABaseErrorResponse _$BABaseErrorResponseFromJson(Map<String, dynamic> json) =>
    BABaseErrorResponse(
      (json['code'] as num).toInt(),
      json['message'] as String,
      (json['details'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BABaseErrorResponseToJson(
        BABaseErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'details': instance.details,
    };
