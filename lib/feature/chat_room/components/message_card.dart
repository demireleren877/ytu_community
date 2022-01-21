import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';

import 'message_text.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
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
    return Container(
      alignment: isMe == true ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        padding: context.paddingLow,
        margin: context.paddingLow,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: isMe == true
                  ? Colors.orangeAccent.withOpacity(0.5)
                  : Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
          color: isMe == true ? Colors.orangeAccent : Colors.white,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: MessageText(
          snapshot: snapshot,
          index: index,
          isMe: isMe,
        ),
      ),
    );
  }
}
