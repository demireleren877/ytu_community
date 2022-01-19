import 'package:flutter/material.dart';

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
              fontSize: 15, fontWeight: FontWeight.w600, color: Colors.blue),
        ),
      ),
    );
  }
}
