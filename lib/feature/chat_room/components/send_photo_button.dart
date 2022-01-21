import 'package:flutter/material.dart';

class SendPhotoButton extends StatelessWidget {
  const SendPhotoButton({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.camera_alt_outlined,
        color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
      ),
      onPressed: null,
    );
  }
}
