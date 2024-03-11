import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class milk extends StatelessWidget {
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
                'assets/images/soymilk.jpg',
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
                    'Soy Milk',
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
                      'Soymilk is hot water extract of soybeans. Soymilk can be handled and used in much the same way as dairy milk. Besides being rich in protein, vitamins and minerals, soymilk is lactose free, cholesterol free and low in saturated fat. To make 1 ltr soybean milk you need 125 gms soybean. Wash the soybean seeds, boil them for 10- 15 minutes, strain the water and soak them for 3-4 hours in water. Strain the water from the soybean and rub the bean between your palms to peel them. Put the soybean in a mixer and add water make a paste by adding little water into it. Pour 1 ltr. Hot water into the mixture and run the mixer again. Boil the milk while stirring with spoon, let it come to a boil and turn off the flame. Now sieve the boiled milk with a clean cloth. Soybean milk is ready',
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