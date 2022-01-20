import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        ThemeMode.system == ThemeMode.light
            ? SignupConstants.profileImagePath
            : SignupConstants.profileImagePathDark,
        width: 50.w,
        height: 50.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
