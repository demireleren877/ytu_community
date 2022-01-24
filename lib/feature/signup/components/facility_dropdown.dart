import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:math_eng_community/feature/signup/viewmodel/signup_viewmodel.dart';
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
    return Observer(
      builder: (a) => DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        validator: (value) => value == null ? 'Bu Alan Boş Bırakılamaz' : null,
        value: _signupVM.choosenValue,
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
    );
  }
}
