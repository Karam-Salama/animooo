import 'package:flutter/material.dart';

import '../widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static const routeName = '/forget-passeword-view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgetPasswordViewBody(),
    );
  }
}
