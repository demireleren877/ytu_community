import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/path_constants.dart';
import 'package:kartal/kartal.dart';
import 'package:math_eng_community/core/init/theme_service.dart';
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
          return Padding(
            padding: context.paddingLow,
            child: Column(
              children: [
                SizedBox(height: 75.h),
                CircleAvatar(
                  radius: 50.r,
                  backgroundColor: Colors.transparent,
                  backgroundImage: output["profileImageUrl"] == null
                      ? AssetImage(ThemeService().isDark()
                          ? PathConstants.darkLogoPath
                          : PathConstants.logoPath)
                      : NetworkImage(output["profileImageUrl"])
                          as ImageProvider,
                ),
                SizedBox(height: 15.h),
                Text(
                  output["name"],
                  style: context.textTheme.headline5,
                ),
                SizedBox(height: 15.h),
                const Divider(
                  thickness: 1,
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/homeScreen", (route) => false);
                  },
                  leading: Icon(
                    Icons.home_outlined,
                    size: 30.sp,
                  ),
                  title: const Text("Ana Sayfa"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/professorScreen", (route) => false);
                  },
                  leading: Icon(
                    Icons.contact_page_outlined,
                    size: 30.sp,
                  ),
                  title: const Text("Öğretim Görevlileri"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.calendar_view_month_outlined,
                    size: 30.sp,
                  ),
                  title: const Text("Sınav Takvimim"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/foodScreen", (route) => false);
                  },
                  leading: Icon(
                    Icons.dinner_dining_outlined,
                    size: 30.sp,
                  ),
                  title: const Text("Yemekhane Menüsü"),
                ),
                const Divider(
                  thickness: 1,
                ),
                const Spacer(),
                const Divider(
                  thickness: 1,
                ),
                SizedBox(height: 20.h),
                InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onTap: () {
                    FirebaseServices.auth.signOut().then((value) =>
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/", (route) => false));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Çıkış Yap",
                        style: context.textTheme.headline6,
                      ),
                      SizedBox(width: 15.w),
                      const Icon(Icons.logout),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          );
        },
      ),
    );
  }
}
