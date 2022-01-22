import 'package:flutter/material.dart';
import 'package:math_eng_community/core/data/class_list.dart';
import 'package:math_eng_community/feature/choose_lecture/viewmodel/choose_lecture_viewmodel.dart';
import 'package:kartal/kartal.dart';

import 'components/app_bar.dart';
import 'components/lecture_credit_widget.dart';

class ChooseLectureScreen extends StatefulWidget {
  const ChooseLectureScreen({
    Key? key,
    this.userName,
    this.userFacility,
    this.userMail,
    this.userPassword,
    this.userSchoolNumber,
    this.profileImage,
    this.imageFile,
  }) : super(key: key);
  final String? userName,
      userFacility,
      userMail,
      userPassword,
      userSchoolNumber,
      profileImage,
      imageFile;

  @override
  State<ChooseLectureScreen> createState() => _ChooseLectureScreenState();
}

class _ChooseLectureScreenState extends State<ChooseLectureScreen> {
  late final List<ClassesModel> copyLectures;
  final ChooseLectureVM _chooseLectureVM = ChooseLectureVM();

  @override
  void initState() {
    copyLectures = AllLectures.lectures;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          _chooseLectureVM,
          widget.userName,
          widget.userFacility,
          widget.userSchoolNumber,
          widget.userMail,
          widget.userPassword,
          context,
          widget.profileImage),
      body: Container(
        padding: context.paddingLow,
        child: Column(
          children: [
            Expanded(
              flex: 15,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: copyLectures[index].isSelected,
                    onChanged: (value) {
                      setState(() {
                        _chooseLectureVM.onSubmit(index, value);
                      });
                    },
                    title: Text(copyLectures[index].name),
                    subtitle: copyLectures[index].subname != ""
                        ? Text(copyLectures[index].subname)
                        : null,
                    secondary: LectureCredit(
                        index: index,
                        chooseLectureVM: _chooseLectureVM,
                        copyLectures: copyLectures),
                    activeColor: Colors.green,
                  );
                },
                itemCount: copyLectures.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
