import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
part 'email_viewmodel.g.dart';

class EmailVM = _EmailVMBase with _$EmailVM;

abstract class _EmailVMBase with Store {
  Future sendEmail(
      {required String userName,
      required String userEmail,
      required String toEmail,
      required String subject,
      required String toName,
      required String message}) async {
    const serviceId = "service_ysh5bo8";
    const templateId = "template_w4j3i3d";
    const userId = "user_3ARyMqIRGkMdKGuYFEP8i";
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
    print(response.body);
  }
}
