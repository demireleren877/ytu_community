import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'home_viewmodel.g.dart';

class HomeVM = _HomeVMBase with _$HomeVM;

abstract class _HomeVMBase with Store {
  final PageController pageController = PageController();

  List<String> appTitles = [
    "Duyurular",
    "Forum Sayfasına Hoşgeldiniz",
    "Ders İçerik Listesi",
    "Profilim"
  ];

  @observable
  int selectedIndex = 0;

  @action
  void onTabChange(int index) {
    selectedIndex = index;
    pageController.jumpToPage(index);
  }
}
