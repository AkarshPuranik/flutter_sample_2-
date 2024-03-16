import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class blueBeetle extends StatelessWidget {
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
                'assets/images/blue.jpeg',
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

                  title: Text('Blue Beetle(Cneorane sp.)', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('This insect is dark metallic blue (almost blackish) in colour, with orange head.   With little disturbance, it falls on the ground and shows Feign-death',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('Usually its peak period of activity is first fortnight of July. During this period, it feeds on the cotyledons and young leaves, which results in stunted growth.  On heavy infestation, plant population is greatly affected and the yield loss is to the tune of 5 q/ha. Its infestation is more under high soil moisture conditions.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('Blue beetle can be effectively controlled by spray of Quinalphos 25 EC @ 1.5 l/ha.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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