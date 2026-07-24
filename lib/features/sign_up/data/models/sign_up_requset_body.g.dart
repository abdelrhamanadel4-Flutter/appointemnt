// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_requset_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestBody _$SignUpRequestBodyFromJson(Map<String, dynamic> json) =>
    SignUpRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
      password_confirmation: json['password_confirmation'] as String,
      phone: json['phone'] as String,
      gender: (json['gender'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$SignUpRequestBodyToJson(SignUpRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
      'phone': instance.phone,
      'gender': instance.gender,
    };
