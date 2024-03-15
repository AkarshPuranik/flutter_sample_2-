import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chakli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
    child:  CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/soychakli.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.green[800],
          ),
          SliverToBoxAdapter (
            child: Container(
              color: Colors.green[800],
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Soy Chakli',
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
                      'For preparing Soy chakli mix and sieve rice flour (200 gm), urad dal flour (100 gm), soy flour (100 gm). Add all spices (carom, cumin, red chilli, asafetida, salt) and oil and mix well. Add little water to knead soft dough and put inside chakli mould. Prepare round shaped chakli by pressing the machine from the top revolving it in circular motion. Put them in the pan and fry on a low or medium flame.',
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
      ),
    );
  }
}