// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupVM on _SignupVMBase, Store {
  final _$choosenValueAtom = Atom(name: '_SignupVMBase.choosenValue');

  @override
  String? get choosenValue {
    _$choosenValueAtom.reportRead();
    return super.choosenValue;
  }

  @override
  set choosenValue(String? value) {
    _$choosenValueAtom.reportWrite(value, super.choosenValue, () {
      super.choosenValue = value;
    });
  }

  final _$imageUrlAtom = Atom(name: '_SignupVMBase.imageUrl');

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

  final _$imageFileAtom = Atom(name: '_SignupVMBase.imageFile');

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

  final _$setProfileImageAsyncAction =
      AsyncAction('_SignupVMBase.setProfileImage');

  @override
  Future setProfileImage() {
    return _$setProfileImageAsyncAction.run(() => super.setProfileImage());
  }

  final _$uploadImageAsyncAction = AsyncAction('_SignupVMBase.uploadImage');

  @override
  Future uploadImage() {
    return _$uploadImageAsyncAction.run(() => super.uploadImage());
  }

  final _$_SignupVMBaseActionController =
      ActionController(name: '_SignupVMBase');

  @override
  void onFacilityChanged(dynamic value) {
    final _$actionInfo = _$_SignupVMBaseActionController.startAction(
        name: '_SignupVMBase.onFacilityChanged');
    try {
      return super.onFacilityChanged(value);
    } finally {
      _$_SignupVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void nextStep(
      dynamic context,
      dynamic formkey,
      dynamic username,
      dynamic userfacility,
      dynamic userschoolnumber,
      dynamic usermail,
      dynamic userpassword) {
    final _$actionInfo = _$_SignupVMBaseActionController.startAction(
        name: '_SignupVMBase.nextStep');
    try {
      return super.nextStep(context, formkey, username, userfacility,
          userschoolnumber, usermail, userpassword);
    } finally {
      _$_SignupVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
choosenValue: ${choosenValue},
imageUrl: ${imageUrl},
imageFile: ${imageFile}
    ''';
  }
}
