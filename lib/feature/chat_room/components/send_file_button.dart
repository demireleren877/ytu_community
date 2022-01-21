import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SendFileButton extends StatelessWidget {
  const SendFileButton({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.attach_file,
        color: context.textTheme.bodyText1!.color!.withOpacity(0.64),
      ),
    );
  }
}
