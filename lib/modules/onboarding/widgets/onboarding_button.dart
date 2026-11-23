import 'package:flutter/material.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';
import '../../../core/widgets/custom_btn.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: AppStrings.getStarted,
      style: AppStyles.poppins600WhiteColor15,
      mainAxisAlignment: MainAxisAlignment.center,
      onPressed: () {},
    );
  }
}
