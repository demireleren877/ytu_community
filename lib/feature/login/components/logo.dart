import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/app_constants/color_constants.dart';
import '/feature/login/constants.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundColor: Colors.white,
      backgroundColor: AppColors.transparent,
      radius: 120.r,
      child: Image.asset(ThemeMode.system == ThemeMode.light
          ? LoginConstants.logoPath
          : LoginConstants.darkLogoPath),
    );
  }
}
