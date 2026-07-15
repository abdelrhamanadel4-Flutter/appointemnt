import 'package:appointemnt/core/Widgets/custom_elveted_buttom.dart';
import 'package:appointemnt/core/Helpers/extensions.dart';
import 'package:appointemnt/core/Routing/routes.dart';
import 'package:appointemnt/core/Theming/app_color.dart';
import 'package:appointemnt/features/onborading/widgets/DoctorImageandText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svgs/logo-doc-doc.svg'),
                  SizedBox(width: 8.w),
                  Text(
                    "DocDoc",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              const DoctorImageandText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13.sp, color: ColorsManager.gray),
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: AppTextButton(
                  onPressed: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                  buttonText: 'Get Started',
                  backgroundColor: ColorsManager.primaryColor,
                  textStyle: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
