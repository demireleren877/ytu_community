import 'package:flutter/material.dart';
import 'package:math_eng_community/core/data/profesors_informations.dart';
import 'package:math_eng_community/feature/email/email_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonColumn extends StatelessWidget {
  const ButtonColumn({
    Key? key,
    required this.index,
    required this.avesis,
  }) : super(key: key);
  final int index;
  final String avesis;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SendEmailScreen(
                    imageUrl: ProfesorInfos.profesors[index].imageUrl,
                    name: ProfesorInfos.profesors[index].name,
                    mail: ProfesorInfos.profesors[index].email),
              ),
            );
          },
          icon: const Icon(Icons.email_outlined),
        ),
        IconButton(
          onPressed: () {
            launch(avesis);
          },
          icon: const Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }
}
