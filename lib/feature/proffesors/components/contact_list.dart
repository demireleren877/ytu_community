import 'package:flutter/material.dart';
import 'package:math_eng_community/core/data/profesors_informations.dart';
import 'package:math_eng_community/feature/proffesors/constants.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(ProfesorInfos.profesors[index].name),
        Text(ProfesorConstants.phoneTitle +
            ProfesorInfos.profesors[index].phoneNumber),
        Text(
            ProfesorConstants.mailTitle + ProfesorInfos.profesors[index].email),
        Text(ProfesorConstants.roomTitle + ProfesorInfos.profesors[index].room),
      ],
    );
  }
}
