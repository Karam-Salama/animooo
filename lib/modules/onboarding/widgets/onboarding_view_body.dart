import 'package:animooo/core/functions/navigation.dart';
import 'package:animooo/core/utils/app_strings.dart';
import 'package:animooo/modules/auth/presentation/views/register_view.dart';
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: OnboardingLogo()),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            const SliverToBoxAdapter(child: OnboardingImages()),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            const SliverToBoxAdapter(child: OnboardingTexts()),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            const SliverToBoxAdapter(child: OnboardingIcons()),
            const SliverToBoxAdapter(child: SizedBox(height: 40.0)),
            SliverToBoxAdapter(
              child: CoreButton(
                text: AppStrings.getStarted,
                click: () =>
                    customReplacementNavigate(context, RegisterView.routeName),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            const SliverToBoxAdapter(child: AlreadyHaveAnAccount()),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
          ],
        ),
      ),
    );
  }
}
