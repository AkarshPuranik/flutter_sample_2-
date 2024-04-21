import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Stink extends StatelessWidget {
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
'assets/images/green.jpg',
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

title: Text('Green Stink Bug (Nezara viridula Linnaeus)', style:TextStyle(color: Colors.white,fontSize: 20)),
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
child: Center(child: Text('Adults are about one and a half cm sap sucking insects.Antennae are 5 segmented. After hatching from eggs, laid in groups, the nymphs remain congregated at one place for some time.Nymphs are light green with coloured dots on the body.',style: TextStyle(fontWeight: FontWeight.bold))  ),

),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child:   Center(child: Text('Initially, newly hatched nymphs suck the sap in groups. After few days they move to the pods.Both adults and the nymphs suck the sap from seeds by piercing through the pod wall. Consequently, the seeds become shriveled, seed coat blackens and the pods fall prematurely.About 80% reduction in yield has been found, if average the population of this insect is even one adult per plant.It infests the crop at podding stage (September-October).',style: TextStyle(fontWeight: FontWeight.bold)) )),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child: Center(child: Text('The crop should be sprayed with Quinolphos @1.5 lit/ha or Indoxacarb@333m../ha.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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