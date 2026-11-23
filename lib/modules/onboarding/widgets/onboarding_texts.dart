import 'package:flutter/material.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';

class OnboardingTexts extends StatelessWidget {
  const OnboardingTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.onboardingTitle1,
          textAlign: TextAlign.center,
          style: AppStyles.poppins700PrimaryColor28,
        ),
        const SizedBox(height: 10.0),
        Text(
          AppStrings.onboardingSubtitle1,
          textAlign: TextAlign.center,
          style: AppStyles.poppins400GreyColor13,
        ),
      ],
    );
  }
}
