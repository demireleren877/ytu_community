import 'package:flutter/material.dart';
import 'package:math_eng_community/feature/chat_room/viewmodel/chat_viewmodel.dart';

class SendPhotoButton extends StatelessWidget {
  const SendPhotoButton({
    Key? key,
    required this.context,
    required this.chatVM,
    this.currentLecture,
    this.currentUser,
  }) : super(key: key);

  final BuildContext context;
  final ChatVM chatVM;
  final String? currentLecture;
  final String? currentUser;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.camera_alt_outlined,
        color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
      ),
      onPressed: () => chatVM.sendImage(currentLecture, currentUser),
    );
  }
}
