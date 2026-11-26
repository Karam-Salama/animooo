import 'package:animooo/core/functions/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/validation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/cutom_text_form_field_widget_.dart';
import '../../../onboarding/widgets/onboarding_button.dart';
import '../views/otp_verification_view.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.email,
            keyboardType: TextInputType.emailAddress,
            onChanged: (email) {},
            validator: Validation.validateEmail,
          ),
          const SizedBox(height: 40.0),
          CoreButton(
            text: AppStrings.forgetPassword,
            click: () {
              customReplacementNavigate(context, OtpVerificationView.routeName);
            },
          ),
        ],
      ),
    );
  }
}
