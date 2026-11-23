import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../../../core/widgets/custom_btn.dart';

class CoreButton extends StatelessWidget {
  const CoreButton({super.key, required this.text, required this.click});
  final String text;
  final VoidCallback? click;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text,
      style: AppStyles.poppins600WhiteColor15,
      mainAxisAlignment: MainAxisAlignment.center,
      onPressed: click,
    );
  }
}
