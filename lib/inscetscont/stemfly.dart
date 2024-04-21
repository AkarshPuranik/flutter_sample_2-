import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/SoyInsect.dart';


class Stem extends StatelessWidget {
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
'assets/images/stemfly.jpg',
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

title: Text('Stem Fly[Melanagromyza sojae (Zehntner)]', style:TextStyle(color: Colors.white,fontSize: 20)),
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
child: Center(child: Text('Adult is a shining black fly and about 2 mm in size. It lays eggs in cotyledons or first trifoliate.Damaging stage in maggot, which is creamish yellow in colour and 3-4 mm long in size.',style: TextStyle(fontWeight: FontWeight.bold))  ),

),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child:   Center(child: Text('It damages the crop from germination till the end through several generations.Upto 7 days of germination, the damage is conspicuous.Maggots feed inside the plant by making zigzag tunnels. Due to early plant population to sub optimum.When attacked at later stage, although the plants do not dry up, but the stem tunneling results in reduction in number and weight of seeds per pod, and ultimately in yield.The maggot, before changing to pupa, cuts a small hole from inside for the escape of adult fly. Infested plants show typical leaf damage symptoms. About 20% yield loss can occur from stem fly damage depending upon the crop stage.',style: TextStyle(fontWeight: FontWeight.bold)) )),


Container(

margin: EdgeInsets.all(16.0),
padding: EdgeInsets.all(18.0),
decoration: BoxDecoration(
color: Colors.lightGreen,
borderRadius:BorderRadius.circular(50)
),
child: Center(child: Text('For management of stem fly treat the seed with Thiamethoxam 30 FS @ 10ml/ kg seed or Imidachloprid 48 FS @ 1.25ml/kg seed.',style: TextStyle(fontWeight: FontWeight.bold)) ) ),


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