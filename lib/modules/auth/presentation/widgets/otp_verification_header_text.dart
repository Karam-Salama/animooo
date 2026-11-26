import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class OtpVerificationHeaderText extends StatelessWidget {
  const OtpVerificationHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.otpVerification,
          style: AppStyles.poppins700PrimaryColor28.copyWith(fontSize: 24),
        ),
        const SizedBox(height: 20.0),
        Text(
          AppStrings.otpVerificationSubTitle,
          style: AppStyles.poppins400GreyColor13,
        ),
      ],
    );
  }
}
