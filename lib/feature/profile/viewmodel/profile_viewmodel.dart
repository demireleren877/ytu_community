import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'profile_viewmodel.g.dart';

class ProfileVM = _ProfileVMBase with _$ProfileVM;

abstract class _ProfileVMBase with Store {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController facilityController = TextEditingController();
  final TextEditingController schoolNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @observable
  bool ischangable = false;

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
}
