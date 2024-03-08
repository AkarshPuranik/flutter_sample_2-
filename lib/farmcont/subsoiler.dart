import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Sub extends StatelessWidget {
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
                'assets/images/subsoiler.jpg',
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

                  title: Text('Subsoiler', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('The subsoiler has a facility to adjust desired depth of sub soiling as per requirement. It has provision to adjust maximum depth of 2.5feet in vertisols and can penetrate into heavy clay soils also.This is multipurpose machine which can be used for both rabi and kharif crops simply by adding or removing the furrow openers.Subsoiler can form narrow deep furrows in vertisols.Subsoiler facilitates percolation of rain water.Subsoiler helps to store rain water in the field channel and prevent runoff unlike flat bed sown field.The subsoiler frame can be used to remove deep rooted weeds.The machine can break the hard pan formed due to any reason.The machine is quite sturdy and parts have been designed to prevent breakdown in vertisols.The subsoiler is designed to lift soil from the bottom.It can be used to drain out subsoil excess water.Crop sown with subsoiler has a facility to drain out water from the subsoil with the help of iron ball and chain which can be attached to shank of the subsoiler.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child:   Center(child: Text('The machine presently costs Rs. 67,200/-which is likely to be revised as and when needed. This excludes the cost of transport which is to be borne by buyer.',style: TextStyle(fontWeight: FontWeight.bold))),

                    ),
                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child: Center(child: Text('Order and payment for subsoiler machine is to be made to Director, DSR, Khandwa Road, Indore 452001, M.P.',style: TextStyle(fontWeight: FontWeight.bold)) ),
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