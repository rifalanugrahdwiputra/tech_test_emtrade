// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ba_base_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BABaseSuccessResponse<T> _$BABaseSuccessResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BABaseSuccessResponse<T>(
      fromJsonT(json['data']),
    );

Map<String, dynamic> _$BABaseSuccessResponseToJson<T>(
  BABaseSuccessResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      (json['code'] as num).toInt(),
      json['message'] as String,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      (json['page'] as num).toInt(),
      (json['limit'] as num).toInt(),
      (json['totalPage'] as num).toInt(),
      (json['totalData'] as num).toInt(),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'totalPage': instance.totalPage,
      'totalData': instance.totalData,
    };
