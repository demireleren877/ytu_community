import 'package:flutter/material.dart';
import 'package:math_eng_community/feature/chat_room/viewmodel/chat_viewmodel.dart';

import '../chat_screen.dart';

class SendMessageButton extends StatelessWidget {
  const SendMessageButton({
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
    return IconButton(
      icon: Icon(
        Icons.send_sharp,
        color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
      ),
      onPressed: () {
        _messageController.text.isEmpty
            ? null
            : _chatVM.sendMessage(
                _messageController,
                _scrollController,
                widget.currentUser,
                widget.currentLecture,
              );
      },
    );
  }
}
