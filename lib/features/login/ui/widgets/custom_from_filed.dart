import 'package:appointemnt/core/Theming/app_color.dart';
import 'package:appointemnt/core/Theming/styles.dart';
import 'package:appointemnt/features/login/data/models/login_requset_body.dart';
import 'package:appointemnt/features/login/logic/cubit/login_cubit.dart';
import 'package:custom_form_w/custom_form_w.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFromFiled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomFormW(
      showValidationSnackBar: false,
      showButton: true,
      buttonColor: ColorsManager.primaryColor,
      onSubmit: () {
        if (context.read<LoginCubit>().formKey.currentState!.validate()) {
          // Perform login logic here, e.g., call the login method in the LoginCubit
          context.read<LoginCubit>().login(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
        } else {
          // Show validation error message or handle invalid form state
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Please fill in all required fields.')),
          );
        }
      },

      buttonText: 'Login',
      buttonShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      buttonTextStyle: TextStyles.font16WhiteSemiBold.copyWith(height: 3.5.h),
      padding: EdgeInsets.zero,

      formKey: context.read<LoginCubit>().formKey,
      children: [
        CustomTextField(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
          radius: 14,
          hint: 'Email',
          style: TextStyles.font14DarkBlueMedium,
          controller: context.read<LoginCubit>().emailController,
          isRequired: true,
          type: CustomTextFieldType.email,
          hintStyle: TextStyles.font12GrayMedium,
          withoutLabel: true,
          maxLines: 1,
          cursorColor: ColorsManager.primaryColor,

          focusedBorderColor: ColorsManager.primaryColor,
        ),
        CustomTextField(
          style: TextStyles.font14DarkBlueMedium,
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
          focusedBorderColor: ColorsManager.primaryColor,
          radius: 16,
          hint: 'Password',
          controller: context.read<LoginCubit>().passwordController,
          isRequired: true,
          type: CustomTextFieldType.password,
          suffixIcon: Icon(Icons.visibility_off, color: ColorsManager.gray),

          hintStyle: TextStyles.font12GrayMedium,
          maxLines: 1,
          withoutLabel: true,
          cursorColor: ColorsManager.primaryColor,
        ),
      ],
    );
  }
}
