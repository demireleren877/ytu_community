// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatVM on _ChatVMBase, Store {
  final _$imageFileAtom = Atom(name: '_ChatVMBase.imageFile');

  @override
  File get imageFile {
    _$imageFileAtom.reportRead();
    return super.imageFile;
  }

  @override
  set imageFile(File value) {
    _$imageFileAtom.reportWrite(value, super.imageFile, () {
      super.imageFile = value;
    });
  }

  final _$sendImageAsyncAction = AsyncAction('_ChatVMBase.sendImage');

  @override
  Future sendImage(dynamic currentLecture, dynamic currentUser) {
    return _$sendImageAsyncAction
        .run(() => super.sendImage(currentLecture, currentUser));
  }

  final _$uploadImageAsyncAction = AsyncAction('_ChatVMBase.uploadImage');

  @override
  Future<dynamic> uploadImage(dynamic currentLecture, dynamic currentUser) {
    return _$uploadImageAsyncAction
        .run(() => super.uploadImage(currentLecture, currentUser));
  }

  final _$_ChatVMBaseActionController = ActionController(name: '_ChatVMBase');

  @override
  dynamic sendMessage(dynamic messageController, dynamic scrollController,
      dynamic currentUser, dynamic currentLecture) {
    final _$actionInfo = _$_ChatVMBaseActionController.startAction(
        name: '_ChatVMBase.sendMessage');
    try {
      return super.sendMessage(
          messageController, scrollController, currentUser, currentLecture);
    } finally {
      _$_ChatVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isByMe(dynamic snapshot, dynamic index) {
    final _$actionInfo =
        _$_ChatVMBaseActionController.startAction(name: '_ChatVMBase.isByMe');
    try {
      return super.isByMe(snapshot, index);
    } finally {
      _$_ChatVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageFile: ${imageFile}
    ''';
  }
}
