import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:math_eng_community/feature/choose_lecture/choose_lecture_screen.dart';
import 'package:math_eng_community/feature/signup/model/user_model.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';
part 'signup_viewmodel.g.dart';

class SignupVM = _SignupVMBase with _$SignupVM;

abstract class _SignupVMBase with Store {
  @observable
  String? choosenValue;

  @observable
  String? imageUrl;

  @observable
  File? imageFile;

  @action
  void onFacilityChanged(value) {
    choosenValue = value;
  }

  @action
  void nextStep(context, formkey, username, userfacility, userschoolnumber,
      usermail, userpassword, Box<UserModel> userBox) {
    userBox.add(UserModel(
        email: usermail,
        imageUrl: imageUrl,
        facility: userfacility,
        name: username,
        schoolNumber: userschoolnumber));
    userBox.close();
    if (formkey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ChooseLectureScreen(
            userMail: usermail,
            userName: username,
            userPassword: userpassword,
            userSchoolNumber: userschoolnumber,
            userFacility: userfacility,
            profileImage: imageUrl,
          ),
        ),
      );
    }
  }

  @action
  setProfileImage() async {
    ImagePicker _picker = ImagePicker();
    await _picker.pickImage(source: ImageSource.camera).then((xFile) => {
          if (xFile != null)
            {
              imageFile = File(xFile.path),
              uploadImage(),
            }
        });
  }

  @action
  uploadImage() async {
    String fileName = const Uuid().v1();
    var ref = FirebaseStorage.instance
        .ref()
        .child("profileImages")
        .child("$fileName.jpg");
    var uploadTask = await ref.putFile(imageFile!).catchError((error) async {});
    imageUrl = await uploadTask.ref.getDownloadURL();
  }
}
