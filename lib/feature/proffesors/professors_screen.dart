import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';
import 'package:math_eng_community/core/data/profesors_informations.dart';
import 'package:math_eng_community/core/utilities/app_drawer.dart';
import 'package:math_eng_community/feature/proffesors/constants.dart';

import 'components/button_column.dart';
import 'components/contact_list.dart';
import 'components/profesor_photo.dart';

class ProfesorScreen extends StatelessWidget {
  const ProfesorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ProfesorConstants.contactTitle),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: ProfesorInfos.profesors.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: context.paddingLow,
            height: 140.h,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfesorPhoto(index: index),
                  ContactList(index: index),
                  ButtonColumn(
                    index: index,
                    avesis: ProfesorInfos.profesors[index].avesisUrl,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
