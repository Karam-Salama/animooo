// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool? obscureText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText!,
      keyboardType: keyboardType,
      style: AppStyles.poppins400GreyColor13.copyWith(
        color: AppColors.blackColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
      ),
      cursorColor: AppColors.blackColor,
      decoration: InputDecoration(
        enabledBorder: getBorderStyle(),
        focusedBorder: getBorderStyle(),
        border: getBorderStyle(),
        hintText: hintText,
        fillColor: AppColors.transparent,
        filled: true,
        hintStyle: AppStyles.poppins400GreyColor13.copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        suffixIcon: suffixIcon,
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.whiteColor,
      width: 1.0,
    ),
  );
}
