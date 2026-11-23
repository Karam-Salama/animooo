import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import 'auth_header_text.dart';
import 'auth_logo.dart';
import 'register_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

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
                child: AuthHeaderText(path: Assets.registerHeaderText)),
            SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverToBoxAdapter(child: RegisterForm())
          ],
        ),
      ),
    );
  }
}
