import 'dart:async';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
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
      _verificationVM.checkEmailVerification(context, user, timer);
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
      backgroundColor: AppColors.white,
      body: Observer(builder: (_) {
        return Center(
          child: Lottie.asset(
            _verificationVM.lottiePath,
          ),
        );
      }),
    );
  }
}
