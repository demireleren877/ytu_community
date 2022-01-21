import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:math_eng_community/feature/chat_room/components/show_image.dart';

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
    return snapshot.data.docs[index].data()["type"] == "text"
        ? Container(
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
          )
        : Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            height: context.height / 2.5,
            width: context.width,
            alignment: isMe == true ? Alignment.topRight : Alignment.topLeft,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              margin: context.paddingLow,
              alignment: Alignment.center,
              height: context.height / 2.5,
              width: context.width / 2,
              child: snapshot.data.docs[index].data()["message"] != ""
                  ? InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ShowImage(
                              imageUrl:
                                  snapshot.data.docs[index].data()["message"]),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: CachedNetworkImage(
                          imageUrl: snapshot.data.docs[index].data()["message"],
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    )
                  : const CircularProgressIndicator(),
            ),
          );
  }
}
