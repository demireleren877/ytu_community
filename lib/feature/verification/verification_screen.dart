import 'dart:async';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/feature/verification/viewmodel/verification_viewmodel.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late User user;
  late Timer timer;
  final VerificationVM _verificationVM = VerificationVM();

  @override
  void initState() {
    user = FirebaseServices.auth.currentUser!;
    user.sendEmailVerification();
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      checkEmailVerification();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Observer(builder: (_) {
        return Center(
          child: Lottie.asset(
            _verificationVM.lottiePath,
          ),
        );
      }),
    );
  }

  Future<void> checkEmailVerification() async {
    user = FirebaseServices.auth.currentUser!;
    await user.reload();
    if (user.emailVerified) {
      _verificationVM.changePath();
      timer.cancel();
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, "/homeScreen");
      });
    }
  }
}
