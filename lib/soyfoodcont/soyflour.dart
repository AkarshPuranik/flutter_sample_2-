import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class flour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/soyflour.png',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.green[800],
          ),
          SliverFillRemaining(
            child: Container(
              color: Colors.green[800],
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Soy Flour',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50,width: 50,),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen, // Light green background color
                      borderRadius: BorderRadius.circular(50), // Rounded corners
                    ),
                    child: Text(
                      'Soy flour can be processed by various methods- full fatted, partially defatted, defatted, roasted, enzyme inactive or active, lecithinated etc. Full fatted soy flour can be prepared easily at home. For preparing at home, wash cleaned soybean with water. Boil for 20 minutes and sundry for two to three days and grind in mixer and grinder. Add soy flour in wheat flour to prepare chapatti. For 9kg wheat flour add 1 kg soy flour for fortification',
                      style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}