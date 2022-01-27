import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/core/utilities/centered_progress.dart';
import 'package:math_eng_community/core/utilities/input_decoration.dart';
import 'package:math_eng_community/feature/profile/viewmodel/profile_viewmodel.dart';

import 'components/done_button.dart';
import 'components/edit_button.dart';
import 'components/email_field.dart';
import 'components/facility_field.dart';
import 'components/name_field.dart';
import 'components/profile_picture.dart';
import 'components/school_number_field.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final ProfileVM _profileVM = ProfileVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseServices.user
            .doc(FirebaseServices.auth.currentUser!.email)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const CenteredProgressIndicator();
          } else if (snapshot.data == null) {
            return const CenteredProgressIndicator();
          } else {
            _profileVM.loadInfos(snapshot);
            return ProfilInformations(
              profileVM: _profileVM,
              snapshot: snapshot,
            );
          }
        },
      ),
    );
  }
}

class ProfilInformations extends StatelessWidget {
  const ProfilInformations({
    Key? key,
    required ProfileVM profileVM,
    required this.snapshot,
  })  : _profileVM = profileVM,
        super(key: key);

  final ProfileVM _profileVM;
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: context.paddingMedium,
        child: Observer(
          builder: (a) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfilePicture(
                profileVM: _profileVM,
                snapshot: snapshot,
              ),
              SizedBox(height: 20.h),
              NameField(profileVM: _profileVM),
              SizedBox(height: 20.h),
              EmailField(profileVM: _profileVM),
              SizedBox(height: 20.h),
              FacilityField(profileVM: _profileVM),
              SizedBox(height: 20.h),
              SchoolNumberField(profileVM: _profileVM),
              SizedBox(height: 20.h),
              _profileVM.ischangable == false
                  ? EditButton(profileVM: _profileVM)
                  : DoneButton(profileVM: _profileVM),
            ],
          ),
        ),
      ),
    );
  }
}
