// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VerificationVM on _VerificationVMBase, Store {
  final _$lottiePathAtom = Atom(name: '_VerificationVMBase.lottiePath');

  @override
  String get lottiePath {
    _$lottiePathAtom.reportRead();
    return super.lottiePath;
  }

  @override
  set lottiePath(String value) {
    _$lottiePathAtom.reportWrite(value, super.lottiePath, () {
      super.lottiePath = value;
    });
  }

  final _$checkEmailVerificationAsyncAction =
      AsyncAction('_VerificationVMBase.checkEmailVerification');

  @override
  Future<void> checkEmailVerification(
      dynamic context, dynamic user, dynamic timer) {
    return _$checkEmailVerificationAsyncAction
        .run(() => super.checkEmailVerification(context, user, timer));
  }

  final _$_VerificationVMBaseActionController =
      ActionController(name: '_VerificationVMBase');

  @override
  void changePath() {
    final _$actionInfo = _$_VerificationVMBaseActionController.startAction(
        name: '_VerificationVMBase.changePath');
    try {
      return super.changePath();
    } finally {
      _$_VerificationVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lottiePath: ${lottiePath}
    ''';
  }
}
