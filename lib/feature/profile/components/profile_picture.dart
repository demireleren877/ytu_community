import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:math_eng_community/feature/profile/viewmodel/profile_viewmodel.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    required ProfileVM profileVM,
    required this.snapshot,
  })  : _profileVM = profileVM,
        super(key: key);

  final ProfileVM _profileVM;
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 75.r,
          backgroundColor: AppColors.transparent,
          backgroundImage: NetworkImage(snapshot.data["profileImageUrl"]),
        ),
        Visibility(
          visible: _profileVM.ischangable,
          child: Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_photo_alternate_rounded,
                size: 30,
              ),
            ),
          ),
        )
      ],
    );
  }
}
