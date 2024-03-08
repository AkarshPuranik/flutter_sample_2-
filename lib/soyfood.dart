import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/ContentPage.dart';
import 'package:soybeaan_icrc/soyfoodcont/tofu.dart';


class SoyFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => ContentPage(),
              ),
            );
          },
        ),
        title: const Text('Soyfood Recipe'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              _buildSoyFoodItem(
                context,
                'Tofu',
                'assets/images/tofu.jpeg',
                Tofu(),
              ),
              _buildSoyFoodItem(
                context,
                'Soychakli',
                'assets/images/soychakli.jpeg',
                Tofu(),
              ),
              _buildSoyFoodItem(
                context,
                'Soycurd',
                'assets/images/soycurd.webp',
                Tofu(),
              ),
              _buildSoyFoodItem(
                context,
                'SoyFlour',
                'assets/images/soyflour.webp',
                Tofu(),
              ),
              _buildSoyFoodItem(
                context,
                'Soymilk',
                'assets/images/soymilk.jpeg',
                Tofu(),
              ),
              _buildSoyFoodItem(
                context,
                'Soynuts',
                'assets/images/soynuts.jpg',
                Tofu(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSoyFoodItem(
      BuildContext context,
      String title,
      String imagePath,
      Widget page,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}