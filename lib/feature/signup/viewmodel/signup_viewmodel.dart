import 'package:flutter/material.dart';
import 'package:math_eng_community/feature/choose_lecture/choose_lecture_screen.dart';
import 'package:mobx/mobx.dart';
part 'signup_viewmodel.g.dart';

class SignupVM = _SignupVMBase with _$SignupVM;

abstract class _SignupVMBase with Store {
  @observable
  String? choosenValue;

  @action
  void onFacilityChanged(value) {
    choosenValue = value;
  }

  @action
  void nextStep(context, formkey, username, userfacility, userschoolnumber,
      usermail, userpassword) {
    if (formkey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ChooseLectureScreen(
            userMail: usermail,
            userName: username,
            userPassword: userpassword,
            userSchoolNumber: userschoolnumber,
            userFacility: userfacility,
          ),
        ),
      );
    }
  }
}
