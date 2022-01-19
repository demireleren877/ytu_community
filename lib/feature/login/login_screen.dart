import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../login/viewmodel/login_viewmodel.dart';
import '../login/components/login_button.dart';
import 'components/email_textfield.dart';
import '../login/components/logo.dart';
import '../login/components/new_account_button.dart';
import 'package:kartal/kartal.dart';
import 'components/password_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LoginVM _loginVM = LoginVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: context.paddingMedium,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: context.durationLow,
                    height: context.isKeyBoardOpen ? 0 : 240.h,
                    child: const Logo(),
                  ),
                  SizedBox(height: 25.h),
                  EmailField(
                    loginVM: _loginVM,
                    emailController: _emailController,
                  ),
                  SizedBox(height: 25.h),
                  PasswordField(
                    loginVM: _loginVM,
                    passwordController: _passwordController,
                  ),
                  SizedBox(height: 25.h),
                  LoginButton(loginVM: _loginVM, formKey: _formKey),
                  SizedBox(height: 15.h),
                  const NewAccountButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
