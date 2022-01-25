import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';
import 'package:math_eng_community/core/data/profesors_informations.dart';
import 'package:math_eng_community/core/utilities/app_drawer.dart';
import 'package:math_eng_community/feature/home/viewmodel/home_viewmodel.dart';

class ProfesorScreen extends StatelessWidget {
  ProfesorScreen({Key? key}) : super(key: key);

  final HomeVM _homeVM = HomeVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Öğretim Üyeleri İletişim"),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: ProfesorInfos.profesors.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: context.paddingLow,
            height: 120.h,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 35.r,
                    backgroundImage:
                        NetworkImage(ProfesorInfos.profesors[index].imageUrl),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(ProfesorInfos.profesors[index].name),
                      Text("Telefon: " +
                          ProfesorInfos.profesors[index].phoneNumber),
                      Text("E-Mail: " + ProfesorInfos.profesors[index].email),
                      Text("Oda: " + ProfesorInfos.profesors[index].room),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.email_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_outlined),
                      ),
                    ],
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
