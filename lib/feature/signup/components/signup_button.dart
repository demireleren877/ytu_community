import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/app_constants/color_constants.dart';
import 'package:math_eng_community/feature/signup/viewmodel/signup_viewmodel.dart';
import 'package:kartal/kartal.dart';
import '../constants.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key? key,
    required GlobalKey<FormState> formKey,
    required SignupVM signupVM,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController nameController,
    required TextEditingController schoolNumberController,
  })  : _formKey = formKey,
        _signupVM = signupVM,
        _emailController = emailController,
        _passwordController = passwordController,
        _nameController = nameController,
        _schoolNumberController = schoolNumberController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final SignupVM _signupVM;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final TextEditingController _nameController;
  final TextEditingController _schoolNumberController;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: 200.w,
        height: 50.h,
        child: ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate() &&
                _signupVM.choosenValue != SignupConstants.dropdownHint) {
              _signupVM.nextStep(
                context,
                _formKey,
                _nameController.text,
                _signupVM.choosenValue,
                _schoolNumberController.text,
                _emailController.text,
                _passwordController.text,
              );
            }
          },
          child: Text(
            SignupConstants.signupBtnText,
            style:
                context.textTheme.headline6?.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
