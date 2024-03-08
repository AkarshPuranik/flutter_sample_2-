import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Broad extends StatelessWidget {
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
                'assets/images/broad.jpg',
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

                  title: Text('Broad Bed Furrow', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('The BBF machine has a facility to adjust desired depth of sowing.This is multipurpose machine which can be used for both kharif and rabi crops simply by adding or removing the furrow openers. BBF machine can form channels in alluvial soils with 30 to 35PTO HP tractors. This machine has a provision to adiust desired row to row distance.BBF machine facilitates irrigation through channels easily as and when desired.The BBF machine can be used to weed the beds with the help of tractor with thin tyres by using the sweeps which are provided as an additional option.Additional 5 tines are provided with the machine for use in rabi crops.The machine is quite sturdy and has been designed to have minimum breakdown.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child:   Center(child: Text('The machine presently costs Rs. 58, 035 which is likely to be revised as and when needed. This excludes the cost of transport which is to be borne by buyer.',style: TextStyle(fontWeight: FontWeight.bold))),

                    ),
                    Container(

                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:BorderRadius.circular(50)
                      ),
                      child: Center(child: Text('Order and payment for BBF machine is to be made to Director, DSR,Khandwa Road, Indore 452001, M.P.',style: TextStyle(fontWeight: FontWeight.bold)) ),
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