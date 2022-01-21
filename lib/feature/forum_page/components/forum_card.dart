import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:math_eng_community/core/app_constants/path_constants.dart';
import 'package:math_eng_community/feature/chat_room/chat_screen.dart';

class ForumCard extends StatelessWidget {
  const ForumCard({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);

  final AsyncSnapshot<dynamic> snapshot;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          contentPadding: context.paddingLow,
          horizontalTitleGap: 30.w,
          leading: Image.asset(ThemeMode.system == ThemeMode.dark
              ? PathConstants.logoPath
              : PathConstants.darkLogoPath),
          title: Text(
            "${snapshot.data.data()["takenLectures"][index]}",
            style: TextStyle(fontSize: 20.h),
          ),
          subtitle: Text("${snapshot.data.data()["name"]}"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ChatScreen(
                  currentUser: snapshot.data.data()["name"],
                  currentLecture: snapshot.data.data()["takenLectures"][index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
