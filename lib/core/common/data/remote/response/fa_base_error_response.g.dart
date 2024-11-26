// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fa_base_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FABaseErrorResponse _$FABaseErrorResponseFromJson(Map<String, dynamic> json) =>
    FABaseErrorResponse(
      (json['code'] as num).toInt(),
      json['message'] as String,
      (json['details'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FABaseErrorResponseToJson(
        FABaseErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'details': instance.details,
    };
