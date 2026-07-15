import 'package:appointemnt/core/Theming/styles.dart';
import 'package:flutter/material.dart';

class TermConditionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
            textAlign: TextAlign.center,

      text: TextSpan(
        text: 'By signing up, you agree to our ',
            style: TextStyles.font13GrayRegular,
        children: [
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(text: ' and ',            style: TextStyles.font13GrayRegular.copyWith(height: 1.5),
),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
  
}
