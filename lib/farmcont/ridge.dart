import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Ridge extends StatelessWidget {
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
                'assets/images/ridge.jpg',
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

                  title: Text('Ridge Fertilizer Drill Cum Seed Planter', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('The Ridge fertilizer drill cum seed planter machine has a ability to adjust desired depth of basal doze fertilizer.The Ridge fertilizer drill cum seed planter machine has a ability to adjust desired depth of soybean seeds for sowing.Ridge fertilizer drill cum seed planter machine can be operating with 55 PTO HP tractors.This machine has a provision to adjust desired row to row distance.This machine also facilitates irrigation through channels easily as and when desired.The machine has additional channel opener wings which are provided as an additional option for increasing/ decreasing with of the channels and height of the ridges.The machine has ridge stabilizer at the rear end of the frame.The Ridge fertilizer drill cum seed planter machine has a facility to change the seed dropping roller as per the size of the seed.Ridge fertilizer drill cum seed planter machine has provision of 4 furrow openers with 5 additional furrow openers.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child:   Center(child: Text('The machine presently costs Rs. 69,100/-(04 bottom) Rs. 74,800/-(05 bottom)which is likely to be revised as and when needed. This excludes the cost of transport which is to be borne by buyer.which is to be borne by buyer.',style: TextStyle(fontWeight: FontWeight.bold))),

                    ),
                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child: Center(child: Text('Order and payment for Ridge fertilizer drill cum seed planter machine is to be made to Director, DSR, Khandwa Road, Indore 452001, M. P.',style: TextStyle(fontWeight: FontWeight.bold)) ),
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