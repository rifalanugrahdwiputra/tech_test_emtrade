// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'fa_base_success_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, includeIfNull: true)
class FABaseSuccessResponse<T> {
  final T results;

  FABaseSuccessResponse(this.results);

  factory FABaseSuccessResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$FABaseSuccessResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$FABaseSuccessResponseToJson(this, toJsonT);
}

@JsonSerializable()
class Status {
  final int code;
  final String message;

  Status(this.code, this.message);

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}

@JsonSerializable()
class Meta {
  final int page;
  final int limit;
  final int totalPage;
  final int totalData;

  Meta(this.page, this.limit, this.totalPage, this.totalData);

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
