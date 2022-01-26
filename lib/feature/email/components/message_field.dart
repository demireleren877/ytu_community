import 'package:flutter/material.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';

import '../constants.dart';

class MessageField extends StatelessWidget {
  const MessageField({
    Key? key,
    required TextEditingController messageController,
  })  : _messageController = messageController,
        super(key: key);

  final TextEditingController _messageController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _messageController,
      maxLines: 8,
      decoration: ProjectInputs()
          .copyWith(hintText: SendEmailConstants.messageHintText),
    );
  }
}
