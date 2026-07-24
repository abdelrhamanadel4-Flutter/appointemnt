import 'package:json_annotation/json_annotation.dart';
part 'sign_up_requset_body.g.dart';
@JsonSerializable()

class SignUpRequestBody {
    final String name;

  final String email;
  final String password;
  final String password_confirmation;
  final String phone;
    final int gender;

  SignUpRequestBody({
    required this.email,
    required this.password,
    required this.password_confirmation,
    required this.phone,

        required this.gender,
            required this.name,

        

  });
  
    Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);

}
