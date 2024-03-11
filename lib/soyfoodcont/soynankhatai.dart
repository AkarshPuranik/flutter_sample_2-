import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nankhatai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/soy_nankhatai.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: Colors.green[800],
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.green[800],
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Soy NanKhatai',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen, // Light green background color
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Text(
                        'Soy Nankhatai can be prepared on gas in wok with heavy base or pressure cooker. Take refined wheat flour and soy flour (2:1), sieve together. Grind peeled cardamom and thinly slice pistachios. Melt butter at room temperature. Mix maida, roasted soy flour, baking powder, cardamom powder and sugar. Now add melted butter in the mixture and with help of your hands mix until you get soft dough. Take a utensil with heavy and plain base and add 400 grams salt or sand. Spread it evenly all around and place a wire or net stand in the utensil. Cover the utensil and allow it to get warm at low flame. Meanwhile prepare small balls of nankhatai and place them on a greased plate. Bake nankhatai for 15-20 minutes on low flame',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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