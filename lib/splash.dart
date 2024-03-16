
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/ContentPage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
class Splash extends StatefulWidget{
  const Splash ({Key?key}):super(key:key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navitagetohome();
  }
  _navitagetohome()async{
    await Future.delayed(Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => ContentPage(),));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/sb.jpg'),
                fit: BoxFit.cover
            ),
          ),
        )
    );

  }
}
