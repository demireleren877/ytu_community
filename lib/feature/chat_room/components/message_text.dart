import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';

class MessageText extends StatelessWidget {
  const MessageText({
    Key? key,
    required this.isMe,
    required this.snapshot,
    required this.index,
  }) : super(key: key);

  final bool? isMe;
  final AsyncSnapshot snapshot;
  final int index;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: isMe != true
                ? snapshot.data.docs[index].data()["senderId"] + "\n"
                : "",
            style: TextStyle(
              color: AppColors.black,
              fontSize: 16.sp,
            ),
          ),
          TextSpan(
            text: snapshot.data.docs[index].data()["message"],
            style: TextStyle(
              color: isMe == true ? AppColors.white : AppColors.black54,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
