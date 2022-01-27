import 'package:flutter/material.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';
import 'package:math_eng_community/feature/profile/viewmodel/profile_viewmodel.dart';

class NameField extends StatelessWidget {
  const NameField({
    Key? key,
    required ProfileVM profileVM,
  })  : _profileVM = profileVM,
        super(key: key);

  final ProfileVM _profileVM;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: _profileVM.ischangable,
      controller: _profileVM.nameController,
      decoration: ProjectInputs(),
    );
  }
}
