import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Tobacco extends StatelessWidget {
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
'assets/images/tobacco.jpg',
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

title: Text('Tobacco Caterpillar [Spodoptera litura (Fabricius)]', style:TextStyle(color: Colors.white,fontSize: 20)),
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
child: Center(child: Text('Adult moths possess golden brown forewings with white lines. Hind wings are white with brown veins.Larvae are dirty green in colour with yellow, green and orange longitudinal lines. Each abdominal segment has a black spot on either side. area near the outer edge.',style: TextStyle(fontWeight: FontWeight.bold))  ),

),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child:   Center(child: Text('Newly hatched larvae feed gregariously on the chlorophyll content, and skeletonize the leaves. After 3-4 days larvae scatter and feed on the leaves individually.In case of heavy incidence, the larvae damage the pods as well. Excessive application of nitrogenous fertilizer favors heavy incidence of this insect.Larval population is found maximum in the month of August.',style: TextStyle(fontWeight: FontWeight.bold)) )),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child: Center(child: Text('Generally the larvae of tobacco caterpillar can be found in abundant numbers on single soybean plant and feed on foliage leaving only veins.These plants should be removed and destroyed for preventing its further spread. If needed, the crop should be sprayed with Triazophos 40 EC (0.8 l/ ha) or Quinolphos 25 EC (1.5 l/ha) or Indoxacarb 14.5 SC (0.3 l/ha) or Chlorentraniliprol 18.5 SC (0.10 l/ha) to manage the pests.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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