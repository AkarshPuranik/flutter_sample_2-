import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Gram extends StatelessWidget {
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
                'assets/images/gram.jpeg',
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

                  title: Text('Gram Pod Borer [Heliothis armigera (Hubner)]', style:TextStyle(color: Colors.white,fontSize: 20)),
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
                      child: Center(child: Text('Adult moths are dirty yellow or brownish in colour.Forewings have zigzag lines on the upper surface and a kidney shaped black spot on the lower surface. Hind wings are white with broad black area near the outer edge.Considerable variability has been observed for larval colour. They can be brown, pink, green or yellowish, with differently coloured longitudinal lines over the body.',style: TextStyle(fontWeight: FontWeight.bold))  ),

                    ),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child:   Center(child: Text('Prior to pod initiation, larvae feed on young leaves, retarding plant growth.Subsequently, they feed on buds, flowers, young pods and on seeds within the developed pods.Heavy incidence can reduce the yield by 90 per cent. This insect damages the crop from July to October.',style: TextStyle(fontWeight: FontWeight.bold)) )),


                    Container(

                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius:BorderRadius.circular(50)
                        ),
                        child: Center(child: Text('The crop should be sprayed with Indoxacarb 14.5SC @0.3 lit/ha',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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