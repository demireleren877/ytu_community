import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:kartal/kartal.dart';

class ReceiverInfoCard extends StatelessWidget {
  const ReceiverInfoCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.mail,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String mail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: context.width,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.transparent,
              radius: 35.r,
              backgroundImage: NetworkImage(imageUrl),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style:
                        context.textTheme.headline6?.copyWith(fontSize: 16.sp),
                  ),
                  Text(
                    mail,
                    style:
                        context.textTheme.headline6?.copyWith(fontSize: 16.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
