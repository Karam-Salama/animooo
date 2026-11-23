import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import 'auth_header_text.dart';
import 'auth_logo.dart';
import 'login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverToBoxAdapter(child: AuthLogo()),
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverToBoxAdapter(
                child: AuthHeaderText(path: Assets.loginHeaderText)),
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverToBoxAdapter(child: LoginForm())
          ],
        ),
      ),
    );
  }
}
