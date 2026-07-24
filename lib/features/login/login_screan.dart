import 'package:appointemnt/core/Helpers/spacing.dart';
import 'package:appointemnt/core/Theming/styles.dart';
import 'package:appointemnt/features/login/ui/widgets/already_have_acc.dart';
import 'package:appointemnt/features/login/ui/widgets/custom_from_filed.dart';
import 'package:appointemnt/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:appointemnt/features/login/ui/widgets/term_condintion_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back', style: TextStyles.font24BlueBold),
              verticalSpace(20),
              Text(
                'We\'re excited to have you back, can\'t wait to see \nwhat you\'ve been up to since you last \nlogged in.',
                style: TextStyles.font14GrayRegular.copyWith(height: 1.7),
              ),
              verticalSpace(20),
CustomFromFiled(),
              verticalSpace(10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.font12BlueRegular,
                ),
              ),
              verticalSpace(20),
              TermConditionText(),
              verticalSpace(20),
              AlreadyHaveAcc(),
              LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
