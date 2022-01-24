import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/path_constants.dart';
import 'package:kartal/kartal.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/core/utilities/centered_progress.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: StreamBuilder(
        stream: FirebaseServices.user
            .doc(FirebaseServices.auth.currentUser!.email)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          var output = snapshot.data;
          if (snapshot.data == null) {
            return const CenteredProgressIndicator();
          } else if (!snapshot.hasData) {
            return const CenteredProgressIndicator();
          }
          return Column(
            children: [
              SizedBox(height: 75.h),
              CircleAvatar(
                radius: 50.r,
                backgroundColor: Colors.transparent,
                backgroundImage: output["profileImageUrl"] == null
                    ? const AssetImage(PathConstants.profileImagePathDark)
                    : NetworkImage(output["profileImageUrl"]) as ImageProvider,
              ),
              SizedBox(height: 15.h),
              Text(
                output["name"],
                style: context.textTheme.headline5,
              ),
            ],
          );
        },
      ),
    );
  }
}
