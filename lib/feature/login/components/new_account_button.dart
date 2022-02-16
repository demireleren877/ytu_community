import 'package:flutter/material.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';

class NewAccountButton extends StatelessWidget {
  const NewAccountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "/signupScreen");
        },
        child: const Text(
          "Yeni Hesap Oluştur",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.blue),
        ),
      ),
    );
  }
}
