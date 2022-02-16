// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InitVM on _InitVMBase, Store {
  final _$isDarkAtom = Atom(name: '_InitVMBase.isDark');

  @override
  bool? get isDark {
    _$isDarkAtom.reportRead();
    return super.isDark;
  }

  @override
  set isDark(bool? value) {
    _$isDarkAtom.reportWrite(value, super.isDark, () {
      super.isDark = value;
    });
  }

  final _$_InitVMBaseActionController = ActionController(name: '_InitVMBase');

  @override
  dynamic checkTheme() {
    final _$actionInfo = _$_InitVMBaseActionController.startAction(
        name: '_InitVMBase.checkTheme');
    try {
      return super.checkTheme();
    } finally {
      _$_InitVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDark: ${isDark}
    ''';
  }
}
