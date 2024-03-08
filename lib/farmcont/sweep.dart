import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Sweep extends StatelessWidget {
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
                'assets/images/sweep.jpg',
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

                  title: Text('Sweep Seed Drill', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('The sweep seed drill has a facility to sow and simultaneously do weeding cum tillage operation.The machine is specially devised to use it for both kharif and rabi crops.The machine has a provision to maintain row to row distance.Rows in the seed drill are adjustable.Sweep seed drill facilitates prevention of inundation from rain water.Crop sown with seed drill has a facility to drain out water from the soil.Sweep seed drill helps to store rain water in the field channel and prevention run off unlike flat bed sown field.The sweep seed drill pushes the soil towards the sowing furrow thus forming slope between the soybean and shallow channel.This machine can also control sowing depth.The machine is quite sturdy and all parts have been designed to have no breakdown.The sweep seed drill is designed to lift soil from bottom.It tills the soil and uproots the feed also from the top surface of the soil.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child:   Center(child: Text('The machine presently costs Rs. 50,000/-which is likely to be revised as and when needed. This excludes the cost of transport which is to be borne by buyer.',style: TextStyle(fontWeight: FontWeight.bold))),

                    ),
                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child: Center(child: Text('Order and payment for sweep seed drill machine is to be made to Director, DSR, Khandwa Road, Indore 452001, M.P.',style: TextStyle(fontWeight: FontWeight.bold)) ),
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
