import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/feature/profile/viewmodel/profile_viewmodel.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    Key? key,
    required ProfileVM profileVM,
  })  : _profileVM = profileVM,
        super(key: key);

  final ProfileVM _profileVM;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _profileVM.editProfile();
      },
      child: Text(
        "Edit",
        style: TextStyle(fontSize: 20.sp),
      ),
    );
  }
}
