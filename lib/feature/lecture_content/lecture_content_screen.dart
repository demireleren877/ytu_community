import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';
import 'package:math_eng_community/core/data/class_list.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';
import 'package:math_eng_community/feature/lecture_content/viewmodel/lecture_content_viewmodel.dart';

import 'components/lecture_list_view.dart';

class LectureContentScreen extends StatefulWidget {
  const LectureContentScreen({Key? key}) : super(key: key);

  @override
  State<LectureContentScreen> createState() => _LectureContentScreenState();
}

class _LectureContentScreenState extends State<LectureContentScreen> {
  final TextEditingController _searchController = TextEditingController();
  final LectureContentVM _lectureContentVM = LectureContentVM();
  List<LectureModel> _searchList = AllLectures.lectures;
  bool isTyping = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.paddingLow,
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Center(
              child: SizedBox(
                width: context.dynamicWidth(0.95),
                child: TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    value = value.toLowerCase();
                    setState(() {
                      isTyping = value.isEmpty ? false : true;
                      _searchList = AllLectures.lectures.where((element) {
                        var lectureTitles = element.name.toLowerCase();
                        return lectureTitles.contains(value);
                      }).toList();
                    });
                  },
                  decoration: ProjectInputs().copyWith(
                    suffixIcon: IconButton(
                        onPressed: () {
                          _searchController.text = "";
                          setState(() {
                            isTyping = false;
                            _searchList = AllLectures.lectures;
                          });
                        },
                        icon: Icon(isTyping ? Icons.clear : Icons.search)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: LectureListView(
                searchList: _searchList,
                lectureContentVM: _lectureContentVM,
              ),
            )
          ],
        ),
      ),
    );
  }
}
