// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileVM on _ProfileVMBase, Store {
  final _$ischangableAtom = Atom(name: '_ProfileVMBase.ischangable');

  @override
  bool get ischangable {
    _$ischangableAtom.reportRead();
    return super.ischangable;
  }

  @override
  set ischangable(bool value) {
    _$ischangableAtom.reportWrite(value, super.ischangable, () {
      super.ischangable = value;
    });
  }

  final _$imageUrlAtom = Atom(name: '_ProfileVMBase.imageUrl');

  @override
  String? get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String? value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  final _$imageFileAtom = Atom(name: '_ProfileVMBase.imageFile');

  @override
  File? get imageFile {
    _$imageFileAtom.reportRead();
    return super.imageFile;
  }

  @override
  set imageFile(File? value) {
    _$imageFileAtom.reportWrite(value, super.imageFile, () {
      super.imageFile = value;
    });
  }

  final _$updateProfileAsyncAction =
      AsyncAction('_ProfileVMBase.updateProfile');

  @override
  Future<dynamic> updateProfile() {
    return _$updateProfileAsyncAction.run(() => super.updateProfile());
  }

  final _$setProfileImageAsyncAction =
      AsyncAction('_ProfileVMBase.setProfileImage');

  @override
  Future setProfileImage() {
    return _$setProfileImageAsyncAction.run(() => super.setProfileImage());
  }

  final _$uploadImageAsyncAction = AsyncAction('_ProfileVMBase.uploadImage');

  @override
  Future uploadImage() {
    return _$uploadImageAsyncAction.run(() => super.uploadImage());
  }

  final _$_ProfileVMBaseActionController =
      ActionController(name: '_ProfileVMBase');

  @override
  void editProfile() {
    final _$actionInfo = _$_ProfileVMBaseActionController.startAction(
        name: '_ProfileVMBase.editProfile');
    try {
      return super.editProfile();
    } finally {
      _$_ProfileVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadInfos(dynamic snapshot) {
    final _$actionInfo = _$_ProfileVMBaseActionController.startAction(
        name: '_ProfileVMBase.loadInfos');
    try {
      return super.loadInfos(snapshot);
    } finally {
      _$_ProfileVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
ischangable: ${ischangable},
imageUrl: ${imageUrl},
imageFile: ${imageFile}
    ''';
  }
}
