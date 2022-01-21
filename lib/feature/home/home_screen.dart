import 'package:flutter/material.dart';
import 'package:math_eng_community/feature/forum_page/forum_screen.dart';
import 'package:math_eng_community/feature/home/viewmodel/home_viewmodel.dart';
import 'package:math_eng_community/feature/lecture_content/lecture_content_screen.dart';

import 'components/bottom_nav_bar.dart';

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
          LectureContentScreen(),
          Container(color: Colors.redAccent),
        ],
      ),
      bottomNavigationBar: BottomNavBar(homeVM: _homeVM),
    );
  }
}
