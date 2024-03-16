import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/Crop_Management.dart';
import 'package:soybeaan_icrc/Disease_Management.dart';
import 'package:soybeaan_icrc/about.dart';
import 'package:soybeaan_icrc/advice.dart';
import 'package:soybeaan_icrc/good_agri.dart';
import 'package:soybeaan_icrc/contact.dart';


import 'package:soybeaan_icrc/SoyInsect.dart';
import 'package:soybeaan_icrc/important/important.dart';
import 'package:soybeaan_icrc/insect%20management.dart';
import 'package:soybeaan_icrc/pre.dart';
import 'package:soybeaan_icrc/soyfood.dart';
import 'package:soybeaan_icrc/weed.dart';

import 'farm.dart';


class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery= MediaQuery.of(context);
    final buttonWith = mediaQuery.size.width*0.9;
    final buttonHeight = mediaQuery.size.height*0.07;



    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text('Soybean (I.C.A.R)',),
      ),
      drawer: Drawer(
        child: ListView(
          children:<Widget> [
            DrawerHeader (
                decoration: BoxDecoration(

                  gradient: LinearGradient(colors: <Color>[
                    Colors.green,
                    Colors.green
                  ] ),
                ),
                child: Container(
                  child:Column(
                    children:<Widget> [
                      CircleAvatar(
radius: 45,
                          child: Image.asset('assets/images/icons.jpg',width: 90,height: 90,)
                      ),

                      Text('Contents',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold ),)
                    ],
                  ),
                ) ),


            ListTile(
              leading: Icon(Icons.grass_sharp),
              title: Text('Crop Management'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Crop_Management(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.mouse_sharp),
              title: Text('Insect Management'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SoyInsect(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.warning_amber),
              title: Text('Disease Management'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Disease_Management(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.pest_control),
              title: Text('Weed Management'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Weed(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.newspaper),
              title: Text('Soyfood Recipe'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SoyFood(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.agriculture),
              title: Text('Farm Machinery'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => farm(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(title: Text('Important Information'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => important(),
                    ),
                  );
                } ),


            ListTile(leading:Icon(Icons.info_outline) ,title: Text('About Soybean Gyan'),onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => about(),),);
    }),

            ListTile(leading:Icon(Icons.info_outline),title: Text('Good Agri Practices'), onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Agri(),
              ),
            );
            } ),
            ListTile(leading:Icon(Icons.info_outline),title: Text('Insect Management Sys'),onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => insect(),),
    );
    }),
            ListTile(leading:Icon(Icons.info_outline),title: Text('Farmer Problem Solution'),onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => insect(),),
    );
    }),
            ListTile(leading:Icon(Icons.info_outline),title: Text('Weekly Farming Advice'),onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Advice(),),
              );
            }),
            ListTile(leading:Icon(Icons.info_outline),title: Text('Pre-disposing Factors'),onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => pre(),),
    );
    }),

            ListTile(leading:Icon(Icons.share) ,title: Text('Share'),onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Advice(),),
              );
            }),
            ListTile(leading: Icon(Icons.call),title: Text('Contact'),onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => contact(),
                ),
              );
            },
            ),
          ],


        ),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [

              _buildSoyFoodItem(
                context,
                'Crop Management',
                'assets/images/crop.jpg',
                Crop_Management(),
              ),
              _buildSoyFoodItem(
                context,
                'Insect Management',
                'assets/images/insect.jpg',
                SoyInsect(),
              ),
              _buildSoyFoodItem(
                context,
                'Soy Food',
                'assets/images/soyfood.jpg',
                SoyFood(),
              ),

              _buildSoyFoodItem(
                context,
                'Disease Management',
                'assets/images/disease.jpg',
                Disease_Management(),
              ),
              _buildSoyFoodItem(
                context,
                'Weed Management',
                'assets/images/weed.jpg',
                Weed(),

              ),
              _buildSoyFoodItem(
                context,
                'Farm Machinery',
                'assets/images/farm.jpg',
                farm(),
              ),
              _buildSoyFoodItem(
                context,
                'Important Information',
                'assets/images/important.jpg',
                important(),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSoyFoodItem(
      BuildContext context,
      String title,
      String imagePath,
      Widget page,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),





    );
  }
}