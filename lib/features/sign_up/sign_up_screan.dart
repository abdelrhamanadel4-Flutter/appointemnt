import 'package:appointemnt/core/Helpers/spacing.dart';
import 'package:appointemnt/core/Theming/styles.dart';
import 'package:appointemnt/features/login/ui/widgets/term_condintion_text.dart';
import 'package:appointemnt/features/sign_up/ui/already_have_acc.dart';
import 'package:appointemnt/features/sign_up/ui/customtext.dart';
import 'package:appointemnt/features/sign_up/ui/sign_up_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create Account', style: TextStyles.font24BlueBold),
              verticalSpace(20),
              Text(
                'Sign up now and start exploring all that our \napp has to offer. We\'re excited to welcome \nyou to our community!',
                style: TextStyles.font14GrayRegular.copyWith(height: 1.7),
              ),
              verticalSpace(20),
              CustomFromFiledSingnup(),
              verticalSpace(20),
              TermConditionText(),
                 verticalSpace(20),
              AlreadyHaveAccSingnup(),
              SignUpBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
