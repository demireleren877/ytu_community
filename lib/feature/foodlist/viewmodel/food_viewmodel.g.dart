// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FoodVM on _FoodVMBase, Store {
  final _$lunchMenuAtom = Atom(name: '_FoodVMBase.lunchMenu');

  @override
  String? get lunchMenu {
    _$lunchMenuAtom.reportRead();
    return super.lunchMenu;
  }

  @override
  set lunchMenu(String? value) {
    _$lunchMenuAtom.reportWrite(value, super.lunchMenu, () {
      super.lunchMenu = value;
    });
  }

  final _$dinnerMenuAtom = Atom(name: '_FoodVMBase.dinnerMenu');

  @override
  String? get dinnerMenu {
    _$dinnerMenuAtom.reportRead();
    return super.dinnerMenu;
  }

  @override
  set dinnerMenu(String? value) {
    _$dinnerMenuAtom.reportWrite(value, super.dinnerMenu, () {
      super.dinnerMenu = value;
    });
  }

  @override
  String toString() {
    return '''
lunchMenu: ${lunchMenu},
dinnerMenu: ${dinnerMenu}
    ''';
  }
}
