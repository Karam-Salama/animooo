import 'package:animooo/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class ForgetPasswordHeaderText extends StatelessWidget {
  const ForgetPasswordHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.forgetPassword,
          style: AppStyles.poppins700PrimaryColor28.copyWith(fontSize: 24),
        ),
        const SizedBox(height: 20.0),
        Text(
          AppStrings.forgetPasswordSubTitle,
          style: AppStyles.poppins400GreyColor13,
        ),
      ],
    );
  }
}
