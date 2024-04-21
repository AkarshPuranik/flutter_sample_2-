import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Green extends StatelessWidget {
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
'assets/images/semilooper.png',
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

title: Text('Green Semiloopers [Chrysodeixis acuta (Walker) Diachrysia orichalcea (Fabricius)]', style:TextStyle(color: Colors.white,fontSize: 20)),
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
child: Center(child: Text('Predominantly two types of green semiloopers damage soybean the most.One-Adults have two silvery spots on each of the forewings.Larvae are pale green, with greenish-blue and white longitudinal lines on the body. Two- Adults have a large, triangular golden spot on each of the forewings.Larvae are green in colour with minute spines on the body. Both types of larvae form semilooper while in movement.',style: TextStyle(fontWeight: FontWeight.bold))  ),

),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child:   Center(child: Text('Young larvae scratch the leaves, leaving only white membrane. Grown up larvae feed on leaves making differently shaped holes.On heavy incidence, only leaf-veins are seen on the plant.Defoliation may result up to 50% reduction in yield. These larvae reach their peak activity during August-September.',style: TextStyle(fontWeight: FontWeight.bold)) )),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child: Center(child: Text('Young larvae scratch the leaves, leaving only white membrane. Grown up larvae feed on leaves making differently shaped holes.On heavy incidence, only leaf-veins are seen on the plant.Defoliation may result up to 50% reduction in yield. These larvae reach their peak activity during August-September.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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