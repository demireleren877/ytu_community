import 'package:flutter/material.dart';

class MessageField extends StatelessWidget {
  const MessageField({
    Key? key,
    required TextEditingController messageController,
  })  : _messageController = messageController,
        super(key: key);

  final TextEditingController _messageController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _messageController,
      maxLines: null,
      decoration: const InputDecoration(
        hintText: "Type message",
        border: InputBorder.none,
      ),
    );
  }
}
