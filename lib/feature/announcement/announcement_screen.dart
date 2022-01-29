import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:math_eng_community/feature/announcement/viewmodel/announcement_viewmodel.dart';
import 'components/announcement_card.dart';

class AnnouncementScreen extends StatefulWidget {
  const AnnouncementScreen({Key? key}) : super(key: key);

  @override
  State<AnnouncementScreen> createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  final AnnouncementVM _announcementVM = AnnouncementVM();

  @override
  void initState() {
    _announcementVM.getAnnouncements();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: _announcementVM.announcementTitles == null
              ? 0
              : _announcementVM.announcementTitles!.length,
          itemBuilder: (context, index) {
            return AnnouncementCard(
              announcementVM: _announcementVM,
              index: index,
            );
          },
        );
      }),
    );
  }
}
