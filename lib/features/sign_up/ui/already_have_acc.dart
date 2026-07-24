
import 'package:appointemnt/core/Helpers/extensions.dart';
import 'package:appointemnt/core/Routing/routes.dart';
import 'package:appointemnt/core/Theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

class AlreadyHaveAccSingnup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'Already have an account yet ? ',
          style: TextStyles.font13DarkBlueRegular,
          children: [
            TextSpan(
              text: 'Sign In',
              style: TextStyles.font13BlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacementNamed(Routes.signUpScreen);
                },
            ),
          ],
        ),
      ),
    );
  }
}
