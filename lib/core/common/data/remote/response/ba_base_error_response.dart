// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'ba_base_error_response.g.dart';

@JsonSerializable()
class BABaseErrorResponse {
  final int code;
  final String message;
  final List<String>? details;

  BABaseErrorResponse(this.code, this.message, this.details);

  factory BABaseErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$BABaseErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BABaseErrorResponseToJson(this);
}
