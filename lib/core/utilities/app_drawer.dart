import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:math_eng_community/core/app_constants/path_constants.dart';
import 'package:kartal/kartal.dart';
import 'package:math_eng_community/feature/signup/model/user_model.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 100.h),
          CircleAvatar(
            radius: 60.r,
            backgroundColor: Colors.transparent,
            backgroundImage:
                Hive.box<UserModel>("user").get(0)!.imageUrl != null
                    ? NetworkImage(
                        Hive.box<UserModel>("user").get(0)!.imageUrl!,
                      )
                    : const AssetImage(PathConstants.profileImagePathDark)
                        as ImageProvider,
          ),
          SizedBox(height: 10.h),
          Text(
            Hive.box<UserModel>("user").get(0)!.name!,
            style: context.textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
