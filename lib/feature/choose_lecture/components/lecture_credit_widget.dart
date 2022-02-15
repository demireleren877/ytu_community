import 'package:flutter/material.dart';
import '/core/data/class_list.dart';
import '/feature/choose_lecture/viewmodel/choose_lecture_viewmodel.dart';

class LectureCredit extends StatelessWidget {
  const LectureCredit(
      {Key? key,
      required this.index,
      required this.chooseLectureVM,
      required this.copyLectures})
      : super(key: key);

  final int index;
  final ChooseLectureVM chooseLectureVM;
  final List<LectureModel> copyLectures;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            child: Icon(
          Icons.circle,
          size: 40,
          color: copyLectures[index].isSelected == true
              ? (chooseLectureVM.totalCredit <= 28 ? Colors.green : Colors.red)
              : Colors.grey,
        )),
        Positioned(
          child: Text(
            copyLectures[index].credit.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          bottom: 12,
          left: 15,
        ),
      ],
    );
  }
}
