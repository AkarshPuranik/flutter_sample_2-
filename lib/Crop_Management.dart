import 'package:flutter/material.dart';



class Crop_Management extends StatelessWidget {
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
        title: const Text('Crop Management'),
        backgroundColor: Colors.green,
      ),

      body:


      Center(

        child: Column(

          children: [
            SizedBox(height: 40,),

            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:

              ElevatedButton(onPressed: () {

              },
                child: Text('Soil Requirement'),
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


              },
                child: Text('Tillage'),
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

              },
                child: Text('Selection of Varities'),
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

              },
                child: Text('Seed Treatment and Inoculation'),
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

              },
                child: Text('Manures and Fertilizers'),
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

              },
                child: Text('Intercopping in Soyabean'),
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

    );
  }
}
