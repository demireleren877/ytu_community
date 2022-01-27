import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/feature/profile/viewmodel/profile_viewmodel.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({
    Key? key,
    required ProfileVM profileVM,
  })  : _profileVM = profileVM,
        super(key: key);

  final ProfileVM _profileVM;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _profileVM.editProfile();
      },
      icon: Icon(
        Icons.done,
        size: 40.sp,
      ),
    );
  }
}
