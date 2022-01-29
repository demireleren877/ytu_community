import 'package:flutter/material.dart';
import 'package:math_eng_community/feature/announcement/viewmodel/announcement_viewmodel.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              AnnouncementVM().getAnnouncement();
            },
            child: Text("Bas")),
      ),
    );
  }
}
