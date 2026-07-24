import 'package:appointemnt/core/Theming/app_color.dart';
import 'package:appointemnt/core/Theming/styles.dart';
import 'package:appointemnt/features/sign_up/data/models/sign_up_requset_body.dart';
import 'package:appointemnt/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:custom_form_w/custom_form_w.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFromFiledSingnup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomFormW(
      showValidationSnackBar: false,
      showButton: true,
      buttonColor: ColorsManager.primaryColor,
      onSubmit: () {
        if (context.read<SignupCubit>().formKey.currentState!.validate()) {
          context.read<SignupCubit>().SignUp(
            SignUpRequestBody(
              email: context.read<SignupCubit>().emailController.text,
              password: context.read<SignupCubit>().passwordController.text,
              password_confirmation: context
                  .read<SignupCubit>()
                  .passwordConfirmController
                  .text,
              phone: context.read<SignupCubit>().phoneController.text,
              name: context.read<SignupCubit>().nameController.text,
              gender: 0,
            ),
          );
        } else {
          // Show validation error message or handle invalid form state
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Please fill in all required fields.')),
          );
        }
      },

      buttonText: 'Create Account',
      buttonShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      buttonTextStyle: TextStyles.font16WhiteSemiBold.copyWith(height: 3.5.h),
      padding: EdgeInsets.zero,

      formKey: context.read<SignupCubit>().formKey,
      children: [
        CustomTextField(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
          radius: 14,
          hint: 'name',
          style: TextStyles.font14DarkBlueMedium,
          controller: context.read<SignupCubit>().nameController,
          isRequired: true,
          type: CustomTextFieldType.text,
          hintStyle: TextStyles.font12GrayMedium,
          withoutLabel: true,
          maxLines: 1,
          cursorColor: ColorsManager.primaryColor,
          focusedBorderColor: ColorsManager.primaryColor,
        ),
        CustomTextField(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
          radius: 14,
          hint: 'Email',
          style: TextStyles.font14DarkBlueMedium,
          controller: context.read<SignupCubit>().emailController,
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
          controller: context.read<SignupCubit>().passwordController,
          isRequired: true,
          type: CustomTextFieldType.password,
        
        
          parentPassword: context.read<SignupCubit>().passwordController.text,
          hintStyle: TextStyles.font12GrayMedium,
          maxLines: 1,
          withoutLabel: true,
          cursorColor: ColorsManager.primaryColor,
          visibiltyColor: ColorsManager.gray,
        ),
        CustomTextField(
          style: TextStyles.font14DarkBlueMedium,
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
          focusedBorderColor: ColorsManager.primaryColor,
          radius: 16,
          hint: 'confirmed password',
          controller: context.read<SignupCubit>().passwordConfirmController,
          isRequired: true,
          type: CustomTextFieldType.password,
          isConfirmPassword: true,
          parentPassword: context.read<SignupCubit>().passwordController.text,
          hintStyle: TextStyles.font12GrayMedium,
          maxLines: 1,
          withoutLabel: true,
          cursorColor: ColorsManager.primaryColor,
          visibiltyColor: ColorsManager.gray,
        ),
        CustomTextField(
          style: TextStyles.font14DarkBlueMedium,
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
          focusedBorderColor: ColorsManager.primaryColor,
          radius: 16,
          hint: 'Phone Number',
          controller: context.read<SignupCubit>().phoneController,
          isRequired: true,
          type: CustomTextFieldType.phone,
          isConfirmPassword: true,
          hintStyle: TextStyles.font12GrayMedium,
          maxLines: 1,
          withoutLabel: true,
          cursorColor: ColorsManager.primaryColor,
        ),
      ],
    );
  }
}
