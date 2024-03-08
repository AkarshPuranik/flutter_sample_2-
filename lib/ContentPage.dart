import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/Crop_Management.dart';
import 'package:soybeaan_icrc/Disease_Management.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';
import 'package:soybeaan_icrc/soyfood.dart';
import 'package:soybeaan_icrc/farm.dart';


class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}
class _ContentPageState extends State<ContentPage>{

  int nl= 1;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed:(){

            }
        ),
        title: const Text('Contents'),
        backgroundColor: Colors.green,
      ),

      body:


      SingleChildScrollView(
        child: Center(
        
          child: Column(
        
            children: [
              SizedBox(height: 40,),
        
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:
        
                ElevatedButton(onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                        Crop_Management(),),
                  );
        
        
                },
                  child: Text('Crop Management'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15.0),
                      minimumSize: Size(400, 20),
                      textStyle: TextStyle(fontSize: 22),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white
                  ),
        
                ),
              ),
              SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:
                ElevatedButton(onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                        SoyInsect(),),
                  );
        
        
                },
                  child: Text('Insect Management'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15.0),
                      minimumSize: Size(400, 20),
                      textStyle: TextStyle(fontSize: 22),

                      backgroundColor: Colors.green,
                    foregroundColor: Colors.white
        
                  ),
        
                ),
              ),
        
        
              SizedBox(height: 20,),
        
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:
        
        
                ElevatedButton(onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                        Disease_Management(),),
                  );
        
                },
                  child: Text('Disease Management'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15.0),
                      minimumSize: Size(400, 20),
                      textStyle: TextStyle(fontSize: 22),

                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white
                  ),
        
                ),
              ),
        
              SizedBox(height: 20,),
        
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:
        
                ElevatedButton(onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                        SoyFood(),),
                  );
        
                },
                  child: Text('Soyfood Recipe'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15.0),
                      minimumSize: Size(400, 20),
                      textStyle: TextStyle(fontSize: 22),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white
                  ),
        
                ),
              ),
        
              SizedBox(height: 20,),
        
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:
        
                ElevatedButton(onPressed:  () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>
                 SoyFood(),),
    );

    },
                  child: Text('Weed Management'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15.0),
                      minimumSize: Size(400, 20),
                      textStyle: TextStyle(fontSize: 22),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 20,),
        
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:
        
                ElevatedButton(onPressed:  () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>
                farm(),),
     );

    },
        

                  child: Text('Farm Machinery'),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15.0),
                      minimumSize: Size(400, 20),
                      textStyle: TextStyle(fontSize: 22),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white
                  ),
                ),
              ),
        
        
            ],
          ),
        
        ),
      ),

    );
  }
}
