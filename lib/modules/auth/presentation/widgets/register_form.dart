import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/validation.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/already_have_an_account.dart';
import '../../../../core/widgets/cutom_text_form_field_widget_.dart';
import '../../../onboarding/widgets/onboarding_button.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.fullName,
            keyboardType: TextInputType.name,
            onSaved: (fullName) {},
            validator: Validation.validateName,
          ),
          const SizedBox(height: 16.0),
          CustomTextFormField(
            hintText: AppStrings.email,
            keyboardType: TextInputType.emailAddress,
            onChanged: (email) {},
            validator: Validation.validateEmail,
          ),
          const SizedBox(height: 16.0),
          CustomTextFormField(
            hintText: AppStrings.phone,
            keyboardType: TextInputType.phone,
            onChanged: (phone) {},
            validator: Validation.validatePhone,
          ),
          const SizedBox(height: 16.0),
          CustomTextFormField(
            hintText: AppStrings.password,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            validator: Validation.validatePassword,
            suffixIcon: IconButton(
              icon: SvgPicture.asset(Assets.eyeIcon),
              onPressed: () {},
            ),
            onSaved: (password) {},
          ),
          const SizedBox(height: 40.0),
          CoreButton(
            text: AppStrings.signUp,
            click: () {},
          ),
          const SizedBox(height: 16.0),
          const AlreadyHaveAnAccount()
        ],
      ),
    );
  }
}
