import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Leaff extends StatelessWidget {
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
'assets/images/leaff.jpg',
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

title: Text('Leaf Folder [Hedylepta indicata (Fabricius)]', style:TextStyle(color: Colors.white,fontSize: 20)),
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
child: Center(child: Text('Adults are medium sized moths with creamish wings having brownish-black wavy lines.Larvae are shining green with orange head.',style: TextStyle(fontWeight: FontWeight.bold))  ),

),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child:   Center(child: Text('Prior to pod initiation, larvae feed on young leaves, retarding plant growth.Subsequently, they feed on buds, flowers, young pods and on seeds within the developed pods. Heavy incidence can reduce the yield by 90 per cent.This insect damages the crop from July to October',style: TextStyle(fontWeight: FontWeight.bold)) )),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child: Center(child: Text('Install 4-5 insect specific pheromonetraps per acre.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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