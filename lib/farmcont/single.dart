import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Single extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/single.jpg',
                fit: BoxFit.cover,
              ),
            ),

            backgroundColor: Colors.green[900],

          ),
          SliverFillRemaining(
            child: DefaultTabController(
              length: 3,

              child: Scaffold(backgroundColor: Colors.green[800],
                appBar: AppBar(
                  automaticallyImplyLeading: false,

                  title: Text('Single Ridge Seed Planter', style:TextStyle(color: Colors.white,fontSize: 20)),
                  backgroundColor: Colors.green[800],

                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text('Features',


                          style: TextStyle(fontSize: 14, color: Colors.white ,fontWeight: FontWeight.bold,),


                        ),),
                      Tab(
                        child: Text('Cost',
                          style: TextStyle(fontSize: 14, color: Colors.white ,fontWeight: FontWeight.bold),

                        ),),

                      Tab(
                        child: Text('Procurement',
                          style: TextStyle(fontSize: 14, color: Colors.white ,fontWeight: FontWeight.bold,),
                        ),),

                    ],
                  ),

                ),
                body: TabBarView(
                  children: [
                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(

                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child: Center(child: Text('Adult moths are light yellow or pink in colour. Wings are also light yellow with small black spots.Young larvae are dirty yellow which become brownish red later on. Larvae possess long bristles all over the body.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child:   Center(child: Text('Newly hatched larvae are gregarious and skeletomize the leaves by feeding on he chlorophyll content. After 8-10 days, larvae scatter to neighboring plants and consume leaves.If timely control measures are not taken, population of larvae and the damage increase very rapidly. On heavy incidence, they completely denude the plants.This results in reduction in grain number and weight per pod and ultimately in yield. Larvae damage the crop from July-August to October.',style: TextStyle(fontWeight: FontWeight.bold))),

                    ),
                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child: Center(child: Text('Generally theBihar hairy caterpillar can be found in abundant numbers on single soybean plant and feed on foliage leaving only veins. These plants should be removed and destroyed for preventing its further spread.If needed, the crop should be sprayed with Triazophos 40 EC (0.8 l/ha) or Quinolphos 25 EC (1.5 l/ha) or Indoxacarb 14.5 SC (0.3 l/ha) or Chlorentraniliprol 18.5 SC (0.10 l/ha) to manage the pests.',style: TextStyle(fontWeight: FontWeight.bold)) ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}