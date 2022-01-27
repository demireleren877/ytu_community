import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/feature/foodlist/viewmodel/food_viewmodel.dart';
import 'package:kartal/kartal.dart';

class LunchMenuCard extends StatelessWidget {
  const LunchMenuCard({
    Key? key,
    required FoodVM foodVM,
  })  : _foodVM = foodVM,
        super(key: key);

  final FoodVM _foodVM;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 350.w,
      child: Card(
        child: Center(
          child: Text(
            _foodVM.lunchMenu ?? "",
            style: context.textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
