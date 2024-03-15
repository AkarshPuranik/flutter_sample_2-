import 'package:flutter/material.dart';


class important extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important Information'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Dropdown 1'),
            children: [
              Image.asset('assets/image1.png'), // Replace with your image asset path
            ],
          ),
          ExpansionTile(
            title: Text('Dropdown 2'),
            children: [
              Image.asset('assets/image2.png'), // Replace with your image asset path
            ],
          ),
          ExpansionTile(
            title: Text('Dropdown 3'),
            children: [
              Image.asset('assets/image3.png'), // Replace with your image asset path
            ],
          ),
        ],
      ),
    );
  }
}