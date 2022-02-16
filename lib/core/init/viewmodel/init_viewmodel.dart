import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:math_eng_community/core/data/class_list.dart';
import 'package:mobx/mobx.dart';
part 'init_viewmodel.g.dart';

class InitVM = _InitVMBase with _$InitVM;

abstract class _InitVMBase with Store {
  @observable
  bool? isDark;

  @action
  checkTheme() {
    isDark =
        SchedulerBinding.instance!.window.platformBrightness == Brightness.dark;
  }

  Future<void> init() async {
    for (int i = 0; i < AllLectures.lectures.length; i++) {
      await FirebaseFirestore.instance
          .collection("facilities")
          .doc("Matematik Mühendisliği")
          .collection("lectures")
          .doc(AllLectures.lectures[i].name)
          .set({
        "lectureName": AllLectures.lectures[i].name,
        "lectureSubname": AllLectures.lectures[i].subname,
        "lectureCredit": AllLectures.lectures[i].credit,
        "pdfid": AllLectures.lectures[i].pdfid,
      });
    }
  }
}
