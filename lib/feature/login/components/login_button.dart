import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/init/theme_service.dart';
import '/feature/login/viewmodel/login_viewmodel.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {Key? key, required LoginVM loginVM, required GlobalKey formKey})
      : _loginVM = loginVM,
        _formkey = formKey,
        super(key: key);

  final LoginVM _loginVM;
  final GlobalKey _formkey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: 375.w,
      child: ElevatedButton(
        onPressed: () {
          _loginVM.authentication(context, _formkey);
        },
        child: const Text(
          "Giriş Yap",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
