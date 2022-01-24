import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hive/hive.dart';
import 'package:math_eng_community/core/app_constants/path_constants.dart';
import 'package:math_eng_community/core/utilities/app_drawer.dart';
import 'package:math_eng_community/feature/forum_page/forum_screen.dart';
import 'package:math_eng_community/feature/home/viewmodel/home_viewmodel.dart';
import 'package:math_eng_community/feature/lecture_content/lecture_content_screen.dart';
import 'package:math_eng_community/feature/signup/model/user_model.dart';
import 'components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeVM _homeVM = HomeVM();

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) => InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage:
                    Hive.box<UserModel>("user").get(0)!.imageUrl != null
                        ? NetworkImage(
                            Hive.box<UserModel>("user").get(0)!.imageUrl!,
                          )
                        : const AssetImage(PathConstants.profileImagePathDark)
                            as ImageProvider,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Observer(builder: (_) {
          return Text(_homeVM.appTitles[_homeVM.selectedIndex]);
        }),
      ),
      drawer: const AppDrawer(),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _homeVM.pageController,
        children: [
          Container(color: Colors.lightBlueAccent),
          const ForumScreen(),
          const LectureContentScreen(),
          Container(color: Colors.redAccent),
        ],
      ),
      bottomNavigationBar: BottomNavBar(homeVM: _homeVM),
    );
  }
}
