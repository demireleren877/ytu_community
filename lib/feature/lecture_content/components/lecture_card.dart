import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/data/class_list.dart';
import 'package:math_eng_community/feature/lecture_content/viewmodel/lecture_content_viewmodel.dart';
import 'package:kartal/kartal.dart';

class LectureCard extends StatelessWidget {
  const LectureCard({
    Key? key,
    required LectureContentVM lectureContentVM,
    required List<ClassesModel> searchList,
    required this.index,
  })  : _lectureContentVM = lectureContentVM,
        _searchList = searchList,
        super(key: key);

  final LectureContentVM _lectureContentVM;
  final List<ClassesModel> _searchList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: InkWell(
        onTap: () => _lectureContentVM.openPDF(
          context,
          _searchList[index].pdfid,
          _searchList[index].name,
        ),
        child: Card(
          color: Colors.purple[800],
          child: Center(
            child: Text(
              _searchList[index].name,
              style: context.textTheme.headline6,
            ),
          ),
        ),
      ),
    );
  }
}
