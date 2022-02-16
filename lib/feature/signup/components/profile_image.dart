import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:math_eng_community/core/app_constants/path_constants.dart';
import 'package:math_eng_community/core/init/theme_service.dart';
import 'package:math_eng_community/feature/signup/viewmodel/signup_viewmodel.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.signupVM,
  }) : super(key: key);

  final SignupVM signupVM;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Observer(
        builder: (a) => Stack(
          children: [
            CircleAvatar(
              radius: 100.r,
              backgroundColor: AppColors.transparent,
              backgroundImage: signupVM.imageFile != null
                  ? FileImage(signupVM.imageFile!)
                  : AssetImage(ThemeService().isDark()
                      ? PathConstants.profileImagePathDark
                      : PathConstants.profileImagePath) as ImageProvider,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: IconButton(
                onPressed: () => showPictureChoices(context),
                icon: Icon(
                  Icons.add_photo_alternate,
                  color: Colors.green,
                  size: 30.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> showPictureChoices(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        width: 200.w,
        height: 100.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120.w,
              child: InkWell(
                onTap: () {
                  signupVM.setProfileImage();
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      size: 40.sp,
                    ),
                    Text(
                      'Camera',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 120.w,
              child: InkWell(
                onTap: () {
                  signupVM.fromCamera = false;
                  signupVM.setProfileImage();
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.photo_library,
                      size: 40.sp,
                    ),
                    Text(
                      'Gallery',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
