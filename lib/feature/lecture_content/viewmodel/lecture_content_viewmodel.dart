import 'package:flutter/material.dart';
import 'package:math_eng_community/feature/lecture_content/components/pdf_viewer.dart';
import 'package:math_eng_community/feature/lecture_content/constants.dart';
import 'package:mobx/mobx.dart';
part 'lecture_content_viewmodel.g.dart';

class LectureContentVM = _LectureContentVMBase with _$LectureContentVM;

abstract class _LectureContentVMBase with Store {
  @action
  openPDF(context, pdfId, pdfName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PdfViewer(
          pdfName: pdfName,
          pdfUrl: LectureContentConstants.pdfUrl(pdfId),
        ),
      ),
    );
  }
}
