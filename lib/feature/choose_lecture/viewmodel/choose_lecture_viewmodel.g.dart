// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_lecture_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChooseLectureVM on _ChooseLectureVMBase, Store {
  final _$lecturesAtom = Atom(name: '_ChooseLectureVMBase.lectures');

  @override
  List<LectureModel> get lectures {
    _$lecturesAtom.reportRead();
    return super.lectures;
  }

  @override
  set lectures(List<LectureModel> value) {
    _$lecturesAtom.reportWrite(value, super.lectures, () {
      super.lectures = value;
    });
  }

  final _$totalCreditAtom = Atom(name: '_ChooseLectureVMBase.totalCredit');

  @override
  int get totalCredit {
    _$totalCreditAtom.reportRead();
    return super.totalCredit;
  }

  @override
  set totalCredit(int value) {
    _$totalCreditAtom.reportWrite(value, super.totalCredit, () {
      super.totalCredit = value;
    });
  }

  final _$choosenLecturesAtom =
      Atom(name: '_ChooseLectureVMBase.choosenLectures');

  @override
  ObservableList<String> get choosenLectures {
    _$choosenLecturesAtom.reportRead();
    return super.choosenLectures;
  }

  @override
  set choosenLectures(ObservableList<String> value) {
    _$choosenLecturesAtom.reportWrite(value, super.choosenLectures, () {
      super.choosenLectures = value;
    });
  }

  final _$copyLecturesAtom = Atom(name: '_ChooseLectureVMBase.copyLectures');

  @override
  ObservableList<LectureModel> get copyLectures {
    _$copyLecturesAtom.reportRead();
    return super.copyLectures;
  }

  @override
  set copyLectures(ObservableList<LectureModel> value) {
    _$copyLecturesAtom.reportWrite(value, super.copyLectures, () {
      super.copyLectures = value;
    });
  }

  final _$createAccountAsyncAction =
      AsyncAction('_ChooseLectureVMBase.createAccount');

  @override
  Future<dynamic> createAccount(
      dynamic name,
      dynamic facility,
      dynamic schoolNumber,
      dynamic email,
      dynamic password,
      dynamic context,
      dynamic imageUrl) {
    return _$createAccountAsyncAction.run(() => super.createAccount(
        name, facility, schoolNumber, email, password, context, imageUrl));
  }

  final _$_ChooseLectureVMBaseActionController =
      ActionController(name: '_ChooseLectureVMBase');

  @override
  void onSubmit(dynamic index, dynamic value) {
    final _$actionInfo = _$_ChooseLectureVMBaseActionController.startAction(
        name: '_ChooseLectureVMBase.onSubmit');
    try {
      return super.onSubmit(index, value);
    } finally {
      _$_ChooseLectureVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lectures: ${lectures},
totalCredit: ${totalCredit},
choosenLectures: ${choosenLectures},
copyLectures: ${copyLectures}
    ''';
  }
}
