import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';
import 'package:math_eng_community/feature/email/constants.dart';
import 'package:math_eng_community/feature/email/viewmodel/email_viewmodel.dart';

class SendEmailScreen extends StatelessWidget {
  SendEmailScreen(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.mail})
      : super(key: key);
  final String imageUrl;
  final String name;
  final String mail;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final EmailVM _emailVM = EmailVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mail Yollama Ekranı"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: context.paddingMedium,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: context.paddingLow,
                  height: 120.h,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.transparent,
                          radius: 35.r,
                          backgroundImage: NetworkImage(imageUrl),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              name,
                              style: context.textTheme.headline6
                                  ?.copyWith(fontSize: 18.sp),
                            ),
                            Text(
                              mail,
                              style: context.textTheme.headline6
                                  ?.copyWith(fontSize: 18.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                TextFormField(
                  controller: _subjectController,
                  decoration: ProjectInputs()
                      .copyWith(hintText: SendEmailConstants.subjectHintText),
                ),
                SizedBox(height: 20.h),
                TextFormField(
                  controller: _messageController,
                  maxLines: 8,
                  decoration: ProjectInputs()
                      .copyWith(hintText: SendEmailConstants.messageHintText),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () async {
                      _emailVM.sendEmail(
                          userName: await FirebaseServices.user
                              .doc(FirebaseAuth.instance.currentUser!.email)
                              .get()
                              .then((value) {
                            return value["name"];
                          }),
                          userEmail: FirebaseAuth.instance.currentUser!.email
                              .toString(),
                          toEmail: mail,
                          subject: _subjectController.text,
                          toName: name,
                          message: _messageController.text);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Gönder",
                          style: context.textTheme.headline6,
                        ),
                        const Icon(Icons.send)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
