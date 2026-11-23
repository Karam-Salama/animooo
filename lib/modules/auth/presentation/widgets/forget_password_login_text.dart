import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../views/forget_paddword_view.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: GestureDetector(
        onTap: () {
          customNavigate(context, ForgetPasswordView.routeName);
        },
        child: Text(
          AppStrings.forgetPassword,
          style: AppStyles.poppins700PrimaryColor28.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}
