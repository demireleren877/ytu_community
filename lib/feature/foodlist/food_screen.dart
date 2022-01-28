import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/utilities/app_drawer.dart';
import 'package:math_eng_community/feature/foodlist/constants.dart';
import 'package:math_eng_community/feature/foodlist/viewmodel/food_viewmodel.dart';
import 'package:kartal/kartal.dart';
import 'components/dinner_menu_card.dart';
import 'components/lunch_menu_card.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  final FoodVM _foodVM = FoodVM();

  @override
  void initState() {
    _foodVM.getFoods();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: buildAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                FoodConstants.lunchMenuTitle,
                style: context.textTheme.headline4,
              ),
              SizedBox(height: 20.h),
              LunchMenuCard(foodVM: _foodVM),
              SizedBox(height: 50.h),
              Text(
                FoodConstants.dinnerMenuTitle,
                style: context.textTheme.headline4,
              ),
              SizedBox(height: 20.h),
              DinnerMenuCard(foodVM: _foodVM),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        DateTime.now().day.toString() +
            " / " +
            DateTime.now().month.toString() +
            " / " +
            DateTime.now().year.toString(),
      ),
    );
  }
}
