import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:math_eng_community/feature/signup/viewmodel/signup_viewmodel.dart';

import 'components/email_field.dart';
import 'components/facility_dropdown.dart';
import 'components/name_field.dart';
import 'components/password_field.dart';
import 'components/profile_image.dart';
import 'components/school_number_field.dart';
import 'components/signup_button.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final SignupVM _signupVM = SignupVM();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _schoolNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: Container(
          padding: context.paddingMedium,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              AnimatedContainer(
                duration: context.durationLow,
                height: context.isKeyBoardOpen ? 0 : 200.h,
                child: const ProfileImage(),
              ),
              NameField(nameController: _nameController),
              const SizedBox(height: 15),
              FacilityDropdown(signupVM: _signupVM),
              const SizedBox(height: 15),
              SchoolNumberField(
                  schoolNumberController: _schoolNumberController),
              const SizedBox(height: 15),
              EmailField(emailController: _emailController),
              const SizedBox(height: 15),
              PasswordField(passwordController: _passwordController),
              const SizedBox(height: 15),
              SignupButton(
                formKey: _formKey,
                signupVM: _signupVM,
                emailController: _emailController,
                passwordController: _passwordController,
                nameController: _nameController,
                schoolNumberController: _schoolNumberController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
