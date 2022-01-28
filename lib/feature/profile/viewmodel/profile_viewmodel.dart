import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';
part 'profile_viewmodel.g.dart';

class ProfileVM = _ProfileVMBase with _$ProfileVM;

abstract class _ProfileVMBase with Store {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController facilityController = TextEditingController();
  final TextEditingController schoolNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @observable
  bool ischangable = false;

  @observable
  String? imageUrl;

  @observable
  File? imageFile;

  @action
  void editProfile() {
    ischangable = !ischangable;
  }

  @action
  void loadInfos(snapshot) {
    nameController.text = snapshot.data["name"];
    emailController.text = snapshot.data["email"];
    facilityController.text = snapshot.data["facility"];
    schoolNumberController.text = snapshot.data["schoolNumber"];
  }

  @action
  Future updateProfile() async {
    await FirebaseServices.user
        .doc(FirebaseServices.auth.currentUser!.email)
        .update({
      "name": nameController.text,
      "profileImageUrl": imageUrl ??
          await FirebaseServices.user
              .doc(FirebaseServices.auth.currentUser!.email)
              .get()
              .then((value) {
            return value["profileImageUrl"];
          })
    });
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
