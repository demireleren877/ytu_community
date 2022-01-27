import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/feature/foodlist/food_screen.dart';
import 'package:math_eng_community/feature/proffesors/professors_screen.dart';
import 'package:math_eng_community/feature/verification/verification_screen.dart';
import '/feature/home/home_screen.dart';
import 'core/app_constants/color_constants.dart';
import 'feature/login/login_screen.dart';
import 'feature/signup/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 798),
      builder: () => MaterialApp(
        theme: ThemeData.light(),
        themeMode: ThemeMode.system, //ThemeMode.system,
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute:
            FirebaseServices.auth.currentUser == null ? "/" : "/homeScreen",
        routes: {
          "/": (context) => LoginScreen(),
          "/homeScreen": (context) => const HomeScreen(),
          "/signupScreen": (context) => SignupScreen(),
          "/verificationScreen": (context) => const VerificationScreen(),
          "/professorScreen": (context) => const ProfesorScreen(),
          "/foodScreen": (context) => FoodScreen()
        },
      ),
    );
  }
}
