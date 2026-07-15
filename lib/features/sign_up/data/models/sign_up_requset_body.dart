import 'package:json_annotation/json_annotation.dart';
part 'sign_up_requset_body.g.dart';
@JsonSerializable()

class SignUpRequestBody {
  final String email;
  final String password;
  final String password_confirmation;
  final String phone;
  SignUpRequestBody({
    required this.email,
    required this.password,
    required this.password_confirmation,
    required this.phone,
  });
  
    Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);

}
