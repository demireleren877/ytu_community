import 'package:flutter/material.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';

import '../constants.dart';

class SchoolNumberField extends StatelessWidget {
  const SchoolNumberField({
    Key? key,
    required TextEditingController schoolNumberController,
  })  : _schoolNumberController = schoolNumberController,
        super(key: key);

  final TextEditingController _schoolNumberController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _schoolNumberController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) {
          return SignupConstants.emptyFieldError;
        }
      },
      decoration: ProjectInputs()
          .copyWith(labelText: SignupConstants.labelSchoolNumber),
    );
  }
}
