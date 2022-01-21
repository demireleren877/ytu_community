import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';
import 'package:math_eng_community/core/data/class_list.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';
import 'package:math_eng_community/feature/lecture_content/viewmodel/lecture_content_viewmodel.dart';

class LectureContentScreen extends StatefulWidget {
  const LectureContentScreen({Key? key}) : super(key: key);

  @override
  State<LectureContentScreen> createState() => _LectureContentScreenState();
}

class _LectureContentScreenState extends State<LectureContentScreen> {
  final TextEditingController _searchController = TextEditingController();
  final LectureContentVM _lectureContentVM = LectureContentVM();
  List<ClassesModel> _searchList = AllLectures.lectures;
  bool isTyping = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("Ders Listesi"),
      ),
      body: Padding(
        padding: context.paddingLow,
        child: Column(
          children: [
            SizedBox(height: 25.h),
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
                  searchList: _searchList, lectureContentVM: _lectureContentVM),
            )
          ],
        ),
      ),
    );
  }
}

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
