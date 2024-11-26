// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fa_base_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FABaseSuccessResponse<T> _$FABaseSuccessResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    FABaseSuccessResponse<T>(
      fromJsonT(json['results']),
    );

Map<String, dynamic> _$FABaseSuccessResponseToJson<T>(
  FABaseSuccessResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'results': toJsonT(instance.results),
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
