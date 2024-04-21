import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Miner extends StatelessWidget {
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
                'assets/images/miner.jpg',
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

                  title: Text('Leaf Miner (Aproarema modicella Deventer)', style:TextStyle(color: Colors.white,fontSize: 20)),
                  backgroundColor: Colors.green[800],

                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text('Identification',


                          style: TextStyle(fontSize: 14, color: Colors.white ,fontWeight: FontWeight.bold,),


                        ),),
                      Tab(
                        child: Text('Damage',
                          style: TextStyle(fontSize: 14, color: Colors.white ,fontWeight: FontWeight.bold),

                        ),),

                      Tab(
                        child: Text('Management',
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
                      child: Center(child: Text('Adults are light gray coloured small moths. Fore wings has a white spot near the upper margin, whereas kind wing has a row of hairs on the margins.Larva is 6-8 mm long and dirty white or greenish in colour, with posterior tapering body. Head is shining black.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('Leaf Miner (Aproarema modicella Deventer Initially, larvae feed inside the leaf by mining between the two epidermal layers.This results in typical crinkling of leaves.Later on, larva feeds on the leaf surface by remaining inside a silken web. Due to this typical feeding behaviour, leaves assume the shape of a "beak".Due to heavy incidence of leaf miner, crop appears as if it is burnt, and suffers40-70% yield loss. Although it remains active throughout the kharif season, but the early infestation causes severe yield losses.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Install 4-5 insect specific pheromone traps per acre.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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