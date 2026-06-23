import 'package:appointemnt/core/Theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = AppColor.primaryColor,
    this.borderColor = Colors.transparent,
    this.textStyle,
    this.hasIcon = false,
    this.iconWidget,
    this.mainAxisAlignment,
    this.padding,
    this.iconWidgetSuf,
    this.hasSuffix = false,
  });

  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final TextStyle? textStyle;
  final bool hasIcon;
  final Widget? iconWidget;
  final Widget? iconWidgetSuf;
  final MainAxisAlignment? mainAxisAlignment;
  final EdgeInsetsGeometry? padding;
  final bool hasSuffix;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.transparent,
        padding:
            padding ?? EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        backgroundColor: backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: borderColor),
        ),
      ),
      onPressed: onPressed,
      child: hasIcon
          ? Row(
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              children: [
                iconWidget ?? SizedBox(),
                SizedBox(width: width * 0.02),
                Text(
                  text,
                  style:
                      textStyle ?? TextStyle(fontSize: 16, color: Colors.white),
                ),
                if (hasSuffix) ...[Spacer(), iconWidgetSuf ?? SizedBox()],
                SizedBox(width: width * 0.03),
              ],
            )
          : Text(
              text,
              style: textStyle ?? TextStyle(fontSize: 16, color: Colors.white),
            ),
    );
  }
}
