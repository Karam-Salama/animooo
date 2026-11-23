import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_assets.dart';

class OnboardingImages extends StatelessWidget {
  const OnboardingImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: SvgPicture.asset(
            Assets.onboardingImage1,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 12.0),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                Assets.onboardingImage2,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 8.0),
              SvgPicture.asset(
                Assets.onboardingImage3,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
