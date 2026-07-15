import 'package:appointemnt/core/Theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageandText extends StatelessWidget {
  const DoctorImageandText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/backgroung_logo_onborading.svg'),
        Image.asset('assets/images/doctor_onborading.png'),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                "Best Doctor \n Appointment App",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
