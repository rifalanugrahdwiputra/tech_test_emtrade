// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'boolean_only_remote_response.g.dart';

@JsonSerializable()
class BooleanOnlyRemoteResponse {
  final bool isSuccess;

  BooleanOnlyRemoteResponse(this.isSuccess);

  factory BooleanOnlyRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$BooleanOnlyRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BooleanOnlyRemoteResponseToJson(this);
}
