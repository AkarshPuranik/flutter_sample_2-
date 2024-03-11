
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/ContentPage.dart';
import 'package:soybeaan_icrc/diseasecont/bacterial.dart';
import 'package:soybeaan_icrc/diseasecont/blight.dart';
import 'package:soybeaan_icrc/diseasecont/fungal.dart';
import 'package:soybeaan_icrc/diseasecont/viral.dart';
import 'package:soybeaan_icrc/diseasecont/pustule.dart';




class Bacterial extends StatefulWidget {

  @override
  State<Bacterial> createState() => _Bacterial();
}

class _Bacterial extends State<Bacterial> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed:(){
                Navigator.pop(context,
                  MaterialPageRoute(builder: (context)=>
                      ContentPage(),),
                );

              }
          ),
          title: const Text('Bacterial Diseases'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    const Padding(padding: EdgeInsets.only(left: 10)),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/blight.jpg',
                              width: 150,height: 150,
                              fit: BoxFit.cover) ,
                        ),

                        ElevatedButton(onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>
                                Blight(),),
                          );
                        },
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white
                            ),
                            child: const Text('Bacterial Blight')
                        ),

                      ],

                    ),
                    const Padding(padding: EdgeInsets.only(right: 10)),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/pustule.jpg',
                              width: 150,height: 150,
                              fit: BoxFit.cover) ,
                        ),

                        ElevatedButton(onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>
                                Pustule(),),
                          );

                        },
                            style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white
                            ),
                            child: const Text('Bacterial Pustule')
                        ),

                      ],

                    ),

                  ],


                ),


]
        )

                ),

            )

    );



  }
}