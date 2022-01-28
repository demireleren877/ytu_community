import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/feature/email/constants.dart';
import 'package:math_eng_community/feature/email/viewmodel/email_viewmodel.dart';
import 'package:kartal/kartal.dart';

class SendButton extends StatelessWidget {
  SendButton({
    Key? key,
    required this.subjectController,
    required this.messageController,
    required this.mail,
    required this.name,
  }) : super(key: key);

  final TextEditingController subjectController;
  final TextEditingController messageController;
  final String mail;
  final String name;

  final EmailVM _emailVM = EmailVM();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 150.w,
      child: ElevatedButton(
        onPressed: () async {
          _emailVM.sendEmail(context,
              userName: await FirebaseServices.user
                  .doc(FirebaseAuth.instance.currentUser!.email)
                  .get()
                  .then((value) {
                return value["name"];
              }),
              userEmail: FirebaseAuth.instance.currentUser!.email.toString(),
              toEmail: mail,
              subject: subjectController.text,
              toName: name,
              message: messageController.text);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              SendEmailConstants.sendButtonText,
              style: context.textTheme.headline6?.copyWith(color: Colors.white),
            ),
            const Icon(Icons.send)
          ],
        ),
      ),
    );
  }
}
