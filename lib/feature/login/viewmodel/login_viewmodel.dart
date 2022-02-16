import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:mobx/mobx.dart';
part 'login_viewmodel.g.dart';

class LoginVM = _LoginVMBase with _$LoginVM;

abstract class _LoginVMBase with Store {
  @observable
  String email = "";

  @observable
  String password = "";

  @observable
  bool isPasswordVisible = false;

  @action
  void onEmailChange(String value) {
    email = value;
  }

  @action
  void onPasswordChange(String value) {
    password = value;
  }

  @action
  void changePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
  }

  @action
  Future authentication(context, formKey) async {
    if (formKey.currentState.validate()) {
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        Navigator.pushNamedAndRemoveUntil(
            context, "/homeScreen", (route) => false);
      } on FirebaseAuthException catch (error) {
        Fluttertoast.showToast(
            msg: error.message ?? "Hatalı Giriş Denemesi",
            gravity: ToastGravity.CENTER,
            textColor: AppColors.red);
      }
    }
  }
}
