import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soybeaan_icrc/diseasecont/Soybean Mosaic.dart';
import 'package:soybeaan_icrc/diseasecont/indian.dart';
import 'package:soybeaan_icrc/diseasecont/phyllody.dart';
import 'package:soybeaan_icrc/diseasecont/yellow.dart';

class Viral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text('Viral Diseases'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          _buildViralItem(
            context,
            'soybean Mosaic',
            'assets/images/irrigated.jpg',
            Mosaic(),
          ),
          _buildViralItem(
            context,
            'Yellow Mosaic',
            'assets/images/subsoiler.jpg',
            yellow(),
          ),
          _buildViralItem(
            context,
            'Indian Bud Blight',
            'assets/images/virus_bud_blight.jpg',
            indian(),
          ),
          _buildViralItem(
            context,
            'Phyllody Associated No '
                'Podding Syndrome',
            'assets/images/virus_bud_blight.jpg',
            phyllody(),
          ),
        ],
      ),
    );
  }

  Widget _buildViralItem(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: 300,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}