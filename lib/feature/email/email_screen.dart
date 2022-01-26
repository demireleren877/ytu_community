import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';
import 'package:math_eng_community/feature/email/constants.dart';
import 'components/message_field.dart';
import 'components/receiver_card.dart';
import 'components/send_button.dart';
import 'components/subject_field.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(SendEmailConstants.screenTitle),
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
                ReceiverInfoCard(imageUrl: imageUrl, name: name, mail: mail),
                SizedBox(height: 25.h),
                SubjectField(subjectController: _subjectController),
                SizedBox(height: 20.h),
                MessageField(messageController: _messageController),
                SizedBox(height: 20.h),
                SendButton(
                  mail: mail,
                  name: name,
                  messageController: _messageController,
                  subjectController: _subjectController,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
