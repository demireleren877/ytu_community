import 'package:flutter/material.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';

import '../constants.dart';

class SubjectField extends StatelessWidget {
  const SubjectField({
    Key? key,
    required TextEditingController subjectController,
  })  : _subjectController = subjectController,
        super(key: key);

  final TextEditingController _subjectController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _subjectController,
      decoration: ProjectInputs()
          .copyWith(hintText: SendEmailConstants.subjectHintText),
    );
  }
}
