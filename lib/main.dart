import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/ContentPage.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:soybeaan_icrc/splash.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );

  }
}