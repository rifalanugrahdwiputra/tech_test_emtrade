// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'fa_base_error_response.g.dart';

@JsonSerializable()
class FABaseErrorResponse {
  final int code;
  final String message;
  final List<String>? details;

  FABaseErrorResponse(this.code, this.message, this.details);

  factory FABaseErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$FABaseErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FABaseErrorResponseToJson(this);
}
