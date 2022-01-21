import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/init/theme_service.dart';
import 'package:math_eng_community/feature/home/viewmodel/home_viewmodel.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required HomeVM homeVM,
  })  : _homeVM = homeVM,
        super(key: key);

  final HomeVM _homeVM;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (a) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _homeVM.onTabChange,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30.sp,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_sharp),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
        selectedItemColor:
            ThemeService().isDark() ? Colors.white : Colors.lightBlue,
        unselectedItemColor: Colors.grey,
        currentIndex: _homeVM.selectedIndex,
      ),
    );
  }
}
