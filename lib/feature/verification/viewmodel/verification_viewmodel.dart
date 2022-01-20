import 'dart:async';
import 'package:flutter/material.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/feature/verification/constants.dart';
import 'package:mobx/mobx.dart';
part 'verification_viewmodel.g.dart';

class VerificationVM = _VerificationVMBase with _$VerificationVM;

abstract class _VerificationVMBase with Store {
  @observable
  String lottiePath = VerificationConstants.nonVerifiedLottie;

  @action
  void changePath() {
    lottiePath = VerificationConstants.verifiedLottie;
  }

  @action
  Future<void> checkEmailVerification(context, user, timer) async {
    user = FirebaseServices.auth.currentUser!;
    await user.reload();
    if (user.emailVerified) {
      changePath();
      timer.cancel();
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, "/homeScreen");
      });
    }
  }
}
