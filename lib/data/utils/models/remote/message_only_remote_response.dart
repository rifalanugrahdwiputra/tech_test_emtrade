// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'message_only_remote_response.g.dart';

@JsonSerializable()
class MessageOnlyRemoteResponse {
  final String message;

  MessageOnlyRemoteResponse(this.message);

  factory MessageOnlyRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageOnlyRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MessageOnlyRemoteResponseToJson(this);
}
