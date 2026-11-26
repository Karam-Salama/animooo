import 'package:animooo/core/utils/app_colors.dart';
import 'package:animooo/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../onboarding/widgets/onboarding_button.dart';

class OtpVerificationForm extends StatelessWidget {
  const OtpVerificationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return OtpTextField(
                numberOfFields: 5,
                fieldWidth: 54,
                fieldHeight: 56,
                focusedBorderColor: AppColors.primaryColor,
                margin: const EdgeInsets.only(right: 0),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textStyle: AppStyles.poppins600WhiteColor15
                    .copyWith(color: AppColors.blackColor),
                borderColor: AppColors.whiteColor,
                disabledBorderColor: AppColors.whiteColor,
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    },
                  );
                },
              );
            },
          ),
          const SizedBox(height: 40.0),
          CoreButton(
            text: AppStrings.confirm,
            click: () {},
          ),
        ],
      ),
    );
  }
}
