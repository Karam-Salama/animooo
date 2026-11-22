import 'package:animooo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'core/functions/ongenerate_routes.dart';
import 'modules/splash/views/splash_view.dart';

class Animoo extends StatelessWidget {
  const Animoo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
