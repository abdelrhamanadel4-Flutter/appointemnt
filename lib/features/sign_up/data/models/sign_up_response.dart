import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final Data? data;
  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'code')
  final int? code;

  SignUpResponse({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'username')
  final String? username;

  Data({
    this.token,
    this.username,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}