import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '/feature/login/viewmodel/login_viewmodel.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    required LoginVM loginVM,
    required TextEditingController passwordController,
  })  : _loginVM = loginVM,
        _passwordController = passwordController,
        super(key: key);

  final LoginVM _loginVM;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (a) => TextFormField(
        obscureText: !_loginVM.isPasswordVisible,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (value) => _loginVM.onPasswordChange(value),
        controller: _passwordController,
        autofillHints: const [AutofillHints.password],
        validator: (value) {
          if (value!.length >= 6) {
            return null;
          } else {
            return "Parola Minimum 6 Karakter İçermelidir";
          }
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: !_loginVM.isPasswordVisible
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
            onPressed: () {
              _loginVM.changePasswordVisibility();
            },
          ),
          labelText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
