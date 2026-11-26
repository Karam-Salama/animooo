import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/simple_app_bar.dart';
import '../widgets/otp_verification_view_body.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});
  static const routeName = '/otp-verification-view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SimpleAppBar(title: AppStrings.cancel),
      body: OtpVerificationViewBody(),
    );
  }
}
