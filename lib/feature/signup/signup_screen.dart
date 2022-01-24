import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:kartal/kartal.dart';
import 'package:math_eng_community/feature/signup/constants.dart';
import 'package:math_eng_community/feature/signup/model/user_model.dart';
import 'package:math_eng_community/feature/signup/viewmodel/signup_viewmodel.dart';
import 'components/email_field.dart';
import 'components/facility_dropdown.dart';
import 'components/name_field.dart';
import 'components/password_field.dart';
import 'components/profile_image.dart';
import 'components/school_number_field.dart';
import 'components/signup_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final SignupVM _signupVM = SignupVM();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _schoolNumberController = TextEditingController();

  Box<UserModel>? userBox;

  @override
  void initState() {
    super.initState();
    userBox = Hive.box<UserModel>("user");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: context.height,
          padding: context.paddingMedium,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              AnimatedContainer(
                duration: context.durationLow,
                height: context.isKeyBoardOpen ? 0 : 240.h,
                child: ProfileImage(signupVM: _signupVM),
              ),
              SizedBox(height: 25.h),
              NameField(nameController: _nameController),
              SizedBox(height: 25.h),
              FacilityDropdown(signupVM: _signupVM),
              SizedBox(height: 25.h),
              SchoolNumberField(
                  schoolNumberController: _schoolNumberController),
              SizedBox(height: 25.h),
              EmailField(emailController: _emailController),
              SizedBox(height: 25.h),
              PasswordField(passwordController: _passwordController),
              SizedBox(height: 25.h),
              SignupButton(
                formKey: _formKey,
                signupVM: _signupVM,
                emailController: _emailController,
                passwordController: _passwordController,
                nameController: _nameController,
                schoolNumberController: _schoolNumberController,
                userBox: userBox!,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: const Text(SignupConstants.haveAccount),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
