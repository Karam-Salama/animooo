import 'package:animooo/core/functions/navigation.dart';
import 'package:animooo/modules/auth/presentation/views/register_view.dart';
import 'package:flutter/material.dart';

import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontHaveAccount,
          style: AppStyles.poppins400GreyColor13.copyWith(fontSize: 12.0),
        ),
        GestureDetector(
          onTap: () {
            customReplacementNavigate(context, RegisterView.routeName);
          },
          child: Text(
            AppStrings.signUp,
            style: AppStyles.poppins700PrimaryColor28.copyWith(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
