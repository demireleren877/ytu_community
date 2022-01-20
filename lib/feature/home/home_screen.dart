import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/feature/forum_page/forum_screen.dart';
import 'package:math_eng_community/feature/home/viewmodel/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeVM _homeVM = HomeVM();

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _homeVM.pageController,
        children: [
          Container(color: Colors.lightBlueAccent),
          const ForumScreen(),
          Container(color: Colors.yellowAccent),
          Container(color: Colors.redAccent),
        ],
      ),
      bottomNavigationBar: Observer(
        builder: (a) => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _homeVM.onTabChange,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30.sp,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.forum_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books_sharp),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Home",
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _homeVM.selectedIndex,
        ),
      ),
    );
  }
}
