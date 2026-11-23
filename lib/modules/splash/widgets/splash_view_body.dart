import 'package:flutter/material.dart';

import '../../../core/functions/navigation.dart';
import '../../../core/utils/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../onboarding/views/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    delayedNavigate(OnboardingView.routeName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: SvgPicture.asset(Assets.appLogo));
  }

  void delayedNavigate(String routeName) {
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      customReplacementNavigate(context, routeName);
    });
  }
}
