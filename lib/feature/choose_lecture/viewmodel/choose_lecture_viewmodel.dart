import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_eng_community/core/data/class_list.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:mobx/mobx.dart';
part 'choose_lecture_viewmodel.g.dart';

class ChooseLectureVM = _ChooseLectureVMBase with _$ChooseLectureVM;

abstract class _ChooseLectureVMBase with Store {
  @observable
  List<ClassesModel> lectures = AllLectures.lectures;

  @observable
  int totalCredit = 0;

  @observable
  ObservableList<String> choosenLectures = ObservableList<String>.of([]);

  @observable
  ObservableList<ClassesModel> copyLectures =
      ObservableList.of(AllLectures.lectures);

  @action
  void onSubmit(index, value) {
    copyLectures[index].isSelected = !copyLectures[index].isSelected;
    if (copyLectures[index].isSelected == true) {
      choosenLectures.add(AllLectures.lectures[index].name);
      totalCredit += copyLectures[index].credit!.toInt();
    } else {
      choosenLectures.remove(AllLectures.lectures[index].name);
      totalCredit -= copyLectures[index].credit!.toInt();
    }
  }

  @action
  Future createAccount(
      name, facility, schoolNumber, email, password, context, imageUrl) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Navigator.pushNamed(context, "/verificationScreen");
      });
    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(
          msg: error.message ?? "Hatalı Giriş Denemesi",
          gravity: ToastGravity.CENTER,
          textColor: Colors.red);
    }
    await FirebaseServices.user.doc(email).set({
      "name": name,
      "profileImageUrl": imageUrl,
      "facility": facility,
      "schoolNumber": schoolNumber,
      "email": email,
      "status": "unavailable",
      "takenLectures": choosenLectures
    });
    int i;
    for (i = 0; i < choosenLectures.length; i++) {
      FirebaseServices.forums.doc(choosenLectures[i]).update({
        "members": FieldValue.arrayUnion([email])
      });
    }
  }
}
