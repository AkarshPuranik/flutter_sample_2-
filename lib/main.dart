import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/IntroPage.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int nl=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:IntroPage(),
    );

  }
}

