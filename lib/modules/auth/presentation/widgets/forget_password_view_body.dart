import 'package:flutter/material.dart';

import 'forget_password_form.dart';
import 'forget_password_header_text.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverToBoxAdapter(child: ForgetPasswordHeaderText()),
            SliverToBoxAdapter(child: SizedBox(height: 40.0)),
            SliverToBoxAdapter(child: ForgetPasswordForm())
          ],
        ),
      ),
    );
  }
}
