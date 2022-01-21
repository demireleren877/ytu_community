import 'package:flutter/material.dart';
import 'package:math_eng_community/core/data/class_list.dart';
import 'package:math_eng_community/feature/lecture_content/viewmodel/lecture_content_viewmodel.dart';
import 'package:kartal/kartal.dart';

import 'lecture_card.dart';

class LectureListView extends StatelessWidget {
  const LectureListView({
    Key? key,
    required List<ClassesModel> searchList,
    required LectureContentVM lectureContentVM,
  })  : _searchList = searchList,
        _lectureContentVM = lectureContentVM,
        super(key: key);

  final List<ClassesModel> _searchList;
  final LectureContentVM _lectureContentVM;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _searchList.length,
      physics: const BouncingScrollPhysics(),
      padding: context.paddingLow,
      itemBuilder: (BuildContext context, int index) {
        return LectureCard(
          lectureContentVM: _lectureContentVM,
          searchList: _searchList,
          index: index,
        );
      },
    );
  }
}
