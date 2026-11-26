import 'package:animooo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SimpleAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    void goBack() => Navigator.of(context).maybePop();

    return AppBar(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 48,
      leading: IconButton(
        onPressed: goBack,
        padding: const EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        icon: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.primaryColor,
          size: 18,
        ),
      ),
      title: InkWell(
        onTap: goBack,
        child: Text(
          title,
          style: AppStyles.poppins700PrimaryColor28.copyWith(fontSize: 18),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
