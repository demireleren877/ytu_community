import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/path_constants.dart';
import 'package:kartal/kartal.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 100.h),
          CircleAvatar(
            radius: 40.r,
            backgroundColor: Colors.transparent,
            child: Image.asset(PathConstants.profileImagePathDark),
          ),
          SizedBox(height: 5.h),
          Text(
            "Eren Demirel",
            style: context.textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
