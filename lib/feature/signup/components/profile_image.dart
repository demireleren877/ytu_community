import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/path_constants.dart';
import 'package:math_eng_community/core/init/theme_service.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        ThemeService().isDark()
            ? PathConstants.profileImagePathDark
            : PathConstants.profileImagePath,
        width: 50.w,
        height: 50.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
