import 'package:flutter/material.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';

import '../constants.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
    required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _emailController,
      autofillHints: const [AutofillHints.email],
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        return value!.contains(SignupConstants.emailValidationText)
            ? null
            : SignupConstants.emailValidationError;
      },
      decoration:
          ProjectInputs().copyWith(labelText: SignupConstants.labelEmail),
    );
  }
}
