import 'package:flutter/material.dart';
import 'package:math_eng_community/core/init/viewmodel/init_viewmodel.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  final InitVM _vm = InitVM();

  @override
  void initState() {
    _vm.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
