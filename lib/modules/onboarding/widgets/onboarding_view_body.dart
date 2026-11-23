import 'package:flutter/material.dart';
import '../../../core/widgets/already_have_an_account.dart';
import 'onboarding_button.dart';
import 'onboarding_icons.dart';
import 'onboarding_images.dart';
import 'onboarding_logo.dart';
import 'onboarding_texts.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: OnboardingLogo()),
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverToBoxAdapter(child: OnboardingImages()),
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverToBoxAdapter(child: OnboardingTexts()),
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverToBoxAdapter(child: OnboardingIcons()),
            SliverToBoxAdapter(child: SizedBox(height: 40.0)),
            SliverToBoxAdapter(child: OnboardingButton()),
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverToBoxAdapter(child: AlreadyHaveAnAccount()),
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
          ],
        ),
      ),
    );
  }
}
