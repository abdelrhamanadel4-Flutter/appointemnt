import 'package:appointemnt/core/Helpers/custom_elveted_buttom.dart';
import 'package:appointemnt/core/Helpers/extensions.dart';
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svgs/logo-doc-doc.svg'),
                  SizedBox(width: 8.w),
                  Text(
                    "DocDoc",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              const DoctorImageandText(),
              Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13.sp, color: AppColor.gray),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: CustomElevatedButton(
                  onPressed: () {
                    context.pushNamed('/login');
                  },
                  text: 'Get Started',
                  backgroundColor: AppColor.primaryColor,
                  textStyle: TextStyle(fontSize: 13.sp, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
