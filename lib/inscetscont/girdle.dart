import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Girdle extends StatelessWidget {
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
                'assets/images/girdle.png',
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

                  title: Text('Girdle Beetle [Obereopsis brevis (Swedenbord)]', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('This is a very typical insect for its damage and control in soybean Adults are 8-10 mm long, dark yellow in colour. Lower half of the forewing (elytra) is black, and these segmented antennae are black and turned backwards.Grubs are apodus (without legs), yellow and possess small protuberances on the body.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('Female adult makes two rings on the plant for egg laying.The portion above these girdles gets dried and can be easily spotted in the field. Grubs feed inside the stem and make it hollow, causing flower and pod drop. At later growth stage, grubs cutdown the plant.About 50% loss in yield is likely with this type of damage. It is observed that plants infested during July-August, suffer the most. This insect undergoes hibernation as grub, inside a small piece of stem.The maggot, before changing to pupa, cuts a small hole from inside for the escape of adult fly. Infested plants show typical leaf damage symptoms. About 20% yield loss can occur from stem fly damage depending upon the crop stage.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('The crop should be sprayed with Triazophos 40 EC@ lit/ha or Thichloprid21.7 SC @0.65 lit/ha',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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