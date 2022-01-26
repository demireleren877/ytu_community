import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:math_eng_community/core/data/profesors_informations.dart';

class ProfesorPhoto extends StatelessWidget {
  const ProfesorPhoto({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.transparent,
      radius: 35.r,
      backgroundImage: NetworkImage(ProfesorInfos.profesors[index].imageUrl),
    );
  }
}
