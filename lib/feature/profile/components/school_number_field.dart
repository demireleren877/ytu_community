import 'package:flutter/material.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';
import 'package:math_eng_community/feature/profile/viewmodel/profile_viewmodel.dart';

class SchoolNumberField extends StatelessWidget {
  const SchoolNumberField({
    Key? key,
    required ProfileVM profileVM,
  })  : _profileVM = profileVM,
        super(key: key);

  final ProfileVM _profileVM;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      controller: _profileVM.schoolNumberController,
      decoration: ProjectInputs(),
    );
  }
}
