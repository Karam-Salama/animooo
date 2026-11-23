import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_assets.dart';

class OnboardingIcons extends StatelessWidget {
  const OnboardingIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(Assets.onboardingIcons);
  }
}
