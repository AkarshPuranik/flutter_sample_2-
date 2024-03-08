import 'package:soybeaan_icrc/ContentPage.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/farmcont/broad.dart';
import 'package:soybeaan_icrc/farmcont/irrigated.dart';
import 'package:soybeaan_icrc/farmcont/ridge.dart';
import 'package:soybeaan_icrc/farmcont/single.dart';
import 'package:soybeaan_icrc/farmcont/soybean.dart';
import 'package:soybeaan_icrc/farmcont/subsoiler.dart';
import 'package:soybeaan_icrc/farmcont/sweep.dart';


class farm extends StatelessWidget {
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
        title: const Text('Farm Machinery'),
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
              _buildfarmItem(
                context,
                'Broad Bed Furrow',
                'assets/images/broad.jpg',
                Broad(),
              ),
              _buildfarmItem(
                context,
                'Furrow Irrigated Raised'
                    'Bed System',
                'assets/images/irrigated.jpg',
                Irrigated (),
              ),
              _buildfarmItem(
                context,
                'Subsoiler',
                'assets/images/subsoiler.jpg',
              Sub (),
              ),
              _buildfarmItem(
                context,
                'Sweep Seed Drill',
                'assets/images/sweep.jpg',
                Sweep(),
              ),
              _buildfarmItem(
                context,
                'Ridge Fertilizer Drill Cum'
                    ' Seed Planter',
                'assets/images/ridge.jpg',
                Ridge(),
              ),
              _buildfarmItem(
                context,
                'Single Ridge'
                    ' Seed Planter',
                'assets/images/single.jpg',
                Single(),
              ),
              _buildfarmItem(
                context,
                    'Soybean Seed Drill Cum'
                    'Planter',
                'assets/images/soybean.jpeg',
                Soy(),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildfarmItem(BuildContext context,
      String title,
      String imagePath,
      Widget page,) {
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