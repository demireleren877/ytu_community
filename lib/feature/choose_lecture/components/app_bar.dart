import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/feature/choose_lecture/constants.dart';
import 'package:math_eng_community/feature/choose_lecture/viewmodel/choose_lecture_viewmodel.dart';

AppBar appBar(ChooseLectureVM chooseLectureVM, name, facility, schoolNumber,
    email, password, context, profileImageUrl) {
  return AppBar(
    iconTheme: const IconThemeData(color: AppColors.white),
    toolbarHeight: 50.h,
    actions: [
      IconButton(
        onPressed: () async {
          final valid = await FirebaseServices().uniqUserCheck(email);
          if (!valid) {
            Fluttertoast.showToast(msg: "Mail Adresi Sistemde Kayıtlı");
          } else {
            chooseLectureVM.totalCredit <= 28
                ? chooseLectureVM.createAccount(name, facility, schoolNumber,
                    email, password, context, profileImageUrl)
                : Fluttertoast.showToast(
                    msg: ChooseLectureConstants.crditErrorMessage,
                  );
          }
        },
        icon: const Icon(
          Icons.done,
          color: AppColors.white,
        ),
      )
    ],
    title: const Center(child: Text(ChooseLectureConstants.chooseLectureTitle)),
  );
}
