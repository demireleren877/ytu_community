import 'package:flutter/material.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';

import '../constants.dart';

class NameField extends StatelessWidget {
  const NameField({
    Key? key,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _nameController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) {
          return SignupConstants.emptyFieldError;
        }
      },
      decoration:
          ProjectInputs().copyWith(labelText: SignupConstants.labelName),
    );
  }
}
