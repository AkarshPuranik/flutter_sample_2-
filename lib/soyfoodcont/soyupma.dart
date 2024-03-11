import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class upma extends StatelessWidget {
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
                'assets/images/soy_upma.jpg',
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
                    'Soy Upma',
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
                      'Mix soy okara and semolina in 1:1 ratio and roast till it gets brown with constant stirring. Keep roasted mix aside in plate. Now roast groundnut till brown and keep aside. Heat oil in wok and add mustard seeds, when seeds splutter, add green chillies, carrot and peas and fry for 2-3 minutes. Now add roasted okara-semolina mix and add three times water to mix. Add salt and as batter gets thick add groundnuts and cook for 3-4 minutes.',
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