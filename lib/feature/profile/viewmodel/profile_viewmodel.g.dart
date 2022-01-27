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
ischangable: ${ischangable}
    ''';
  }
}
