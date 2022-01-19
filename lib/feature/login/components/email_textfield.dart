import 'package:flutter/material.dart';
import '/feature/login/viewmodel/login_viewmodel.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
    required LoginVM loginVM,
    required TextEditingController emailController,
  })  : _loginVM = loginVM,
        _emailController = emailController,
        super(key: key);

  final LoginVM _loginVM;
  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => _loginVM.onEmailChange(value),
      validator: (value) {
        if (value!.contains("@std.yildiz.edu.tr")) {
          return null;
        } else {
          return "Geçersiz Mail Adresi";
        }
      },
      controller: _emailController,
      autofillHints: const [AutofillHints.email],
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email),
        labelText: "E-Mail",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
