import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/ContentPage.dart';
import 'package:soybeaan_icrc/Disease_Management.dart';
import 'package:soybeaan_icrc/soyfood.dart';
import 'Crop_Management.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';



    class IntroPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    title: Text('Soybean (I.C.A.R)',style:TextStyle(fontWeight: FontWeight.bold),),
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
                    Material(

                        child: Image.asset('assets/images/icons.jpg',width: 70,height: 70,)
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
    builder: (context) => SoyFood(),
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
    builder: (context) => SoyInsect(),
    ),
    );
    },
    ),
                    Divider(),
                    ListTile(title: Text('Important Information'),
                    onTap: (){
        },

        ),
                    ListTile(leading:Icon(Icons.info_outline) ,title: Text('About Soybean Gyan'),),
                    ListTile(leading:Icon(Icons.info_outline),title: Text('Good Agri Practices'),),
                    ListTile(leading:Icon(Icons.info_outline),title: Text('Insect Management Sys'),),
                    ListTile(leading:Icon(Icons.info_outline),title: Text('Farmer Problem Solution'),),
                    ListTile(leading:Icon(Icons.info_outline),title: Text('Weekly Farming Advice'),),
                    ListTile(leading:Icon(Icons.info_outline),title: Text('Pre-disposing Factors'),),
                    ListTile(leading:Icon(Icons.share) ,title: Text('Share'),),
                    ListTile(leading: Icon(Icons.call),title: Text('Contact'),)
    ],
    ),
    ),


    body: Stack(
    children: [
    Image(
    image: AssetImage('assets/images/sb.jpg'),
    width: 800,
    height: 900,
    ),
    Positioned(
    right: 0.5,
    bottom: 300,
    child: IconButton(
    icon: Icon(Icons.arrow_circle_right),
    iconSize: 70,
    color: Colors.lightGreen,
    onPressed:() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>
                ContentPage(),),
        );

    }


            ),
          )
        ],
      ),
    );


  }
}
