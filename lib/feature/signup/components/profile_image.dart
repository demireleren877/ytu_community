import 'package:flutter/material.dart';
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
      child: Stack(
        children: [
          CircleAvatar(
            radius: 100.r,
            backgroundColor: AppColors.transparent,
            backgroundImage: signupVM.imageFile != null
                ? FileImage(signupVM.imageFile!)
                : AssetImage(ThemeService().isDark()
                    ? PathConstants.darkLogoPath
                    : PathConstants.logoPath) as ImageProvider,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () => signupVM.setProfileImage(),
              icon: const Icon(
                Icons.add_photo_alternate,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
