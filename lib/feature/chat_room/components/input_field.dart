import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/feature/chat_room/viewmodel/chat_viewmodel.dart';
import 'package:kartal/kartal.dart';
import '../chat_screen.dart';
import 'message_field.dart';
import 'send_file_button.dart';
import 'send_message_button.dart';
import 'send_photo_button.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.context,
    required TextEditingController messageController,
    required ChatVM chatVM,
    required ScrollController scrollController,
    required this.widget,
  })  : _messageController = messageController,
        _chatVM = chatVM,
        _scrollController = scrollController,
        super(key: key);

  final BuildContext context;
  final TextEditingController _messageController;
  final ChatVM _chatVM;
  final ScrollController _scrollController;
  final ChatScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingLow,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 32,
            color: const Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: context.horizontalPaddingLow,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(269, 155, 195, 100)
                      .withOpacity(0.15),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    SendFileButton(context: context),
                    SizedBox(width: 5.w),
                    Expanded(
                      child:
                          MessageField(messageController: _messageController),
                    ),
                    SendPhotoButton(
                      context: context,
                      chatVM: _chatVM,
                      currentLecture: widget.currentLecture,
                      currentUser: widget.currentUser,
                    ),
                    SizedBox(width: 5.w),
                    SendMessageButton(
                      context: context,
                      messageController: _messageController,
                      chatVM: _chatVM,
                      scrollController: _scrollController,
                      widget: widget,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
