import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:http/http.dart' as http;
part 'email_viewmodel.g.dart';

class EmailVM = _EmailVMBase with _$EmailVM;

abstract class _EmailVMBase with Store {
  Future sendEmail(context,
      {required String userName,
      required String userEmail,
      required String toEmail,
      required String subject,
      required String toName,
      required String message}) async {
    final serviceId = dotenv.env['EMAIL_SERVICE_ID'];
    final templateId = dotenv.env['EMAIL_TEMPLATE_ID'];
    final userId = dotenv.env["EMAIL_API_USER_ID"];
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json'
      },
      body: json.encode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': userName,
            'user_email': userEmail,
            'user_subject': subject,
            'user_message': message,
            'to_email': toEmail,
            'to_name': toName,
          }
        },
      ),
    );
    if (response.body == "OK") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: AppColors.green,
          content: Text(
            "Mail Gönderildi.",
            style: TextStyle(color: AppColors.white, fontSize: 18),
          ),
        ),
      );
    }
  }
}
