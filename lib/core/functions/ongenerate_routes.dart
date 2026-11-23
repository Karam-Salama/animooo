import 'package:flutter/material.dart';

import '../../modules/auth/presentation/views/forget_paddword_view.dart';
import '../../modules/auth/presentation/views/login_view.dart';
import '../../modules/auth/presentation/views/register_view.dart';
import '../../modules/onboarding/views/onboarding_view.dart';
import '../../modules/splash/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case RegisterView.routeName:
      return MaterialPageRoute(builder: (context) => const RegisterView());
    case ForgetPasswordView.routeName:
      return MaterialPageRoute(
          builder: (context) => const ForgetPasswordView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
