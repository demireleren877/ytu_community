import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/feature/signup/viewmodel/signup_viewmodel.dart';
import 'package:kartal/kartal.dart';
import '../constants.dart';

class FacilityDropdown extends StatelessWidget {
  const FacilityDropdown({
    Key? key,
    required SignupVM signupVM,
  })  : _signupVM = signupVM,
        super(key: key);

  final SignupVM _signupVM;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: .4),
          borderRadius: BorderRadius.circular(15.r)),
      padding: context.paddingLow,
      child: Observer(
        builder: (a) => DropdownButton(
          borderRadius: BorderRadius.circular(15.r),
          value: _signupVM.choosenValue,
          underline: const SizedBox(),
          isExpanded: true,
          items: SignupConstants.facilityList
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          hint: const Text(
            SignupConstants.dropdownHint,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          onChanged: (value) {
            _signupVM.onFacilityChanged(value);
          },
        ),
      ),
    );
  }
}
