import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sns/mainpage.dart';
import 'package:sns/signin.dart';

import 'landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
    );

  }
}