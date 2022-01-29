import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/feature/announcement/viewmodel/announcement_viewmodel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kartal/kartal.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    Key? key,
    required AnnouncementVM announcementVM,
    required this.index,
  })  : _announcementVM = announcementVM,
        super(key: key);

  final AnnouncementVM _announcementVM;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        padding: context.paddingLow,
        height: 100.h,
        child: InkWell(
          onTap: () => launch(_announcementVM.announcementLinks![index]),
          child: Card(
            child: Center(
              child: Text(
                _announcementVM.announcementTitles![index],
                textAlign: TextAlign.center,
                style: context.textTheme.button?.copyWith(
                  fontSize: 18.sp,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
