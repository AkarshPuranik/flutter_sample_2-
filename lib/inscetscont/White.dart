import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class White extends StatelessWidget {
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
'assets/images/white.jpg',
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

title: Text('White Fly (Bemisia tabaci Gennadius)', style:TextStyle(color: Colors.white,fontSize: 20)),
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
child: Center(child: Text('Adults are 1-2 mm in size and light yellow in colour.Wings are coated with white waxy covering. They are usually found on the under surface of leaves during day time.Nymphs are round or oval shaped and greenish in colour.',style: TextStyle(fontWeight: FontWeight.bold))  ),

),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child:   Center(child: Text('This insect damages soybean in three ways. One - Adults and nymphs suck the leaf sap from under surface.This results in retarded plant growth, yellowing of leaves and dropping of flowers and young pods. Two - while sucking the sap, they secrete "honey-dew", which gets deposited on the lower leaves and facilitates development of "sooty-mould". Photosynthesis gets adversely affected. It also transmits yellow mosaic virus (YMV) from one plant to other causing yellow mosaic disease.Leaves become typically yellow.',style: TextStyle(fontWeight: FontWeight.bold)) )),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child: Center(child: Text('For management white fly (YMV), treat the seed with Thiamethoxam 30 FS @10ml/kg seed or Imidachloprid 48 FS @1.25 ml/kg seed Further, if white fly is seen, spray the crop with Thiamethoxam 25WG @ 100g/500 litre water/ha.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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