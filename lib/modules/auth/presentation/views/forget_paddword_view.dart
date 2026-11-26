import 'package:animooo/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/simple_app_bar.dart';
import '../widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static const routeName = '/forget-passeword-view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SimpleAppBar(title: AppStrings.back),
      body: ForgetPasswordViewBody(),
    );
  }
}
