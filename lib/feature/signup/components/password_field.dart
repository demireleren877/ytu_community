import 'package:flutter/material.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';

import '../constants.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    required TextEditingController passwordController,
  })  : _passwordController = passwordController,
        super(key: key);

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _passwordController,
      validator: (value) {
        if (value!.length < 6) {
          return SignupConstants.passwordValidationError;
        }
      },
      decoration:
          ProjectInputs().copyWith(labelText: SignupConstants.labelPassword),
    );
  }
}
