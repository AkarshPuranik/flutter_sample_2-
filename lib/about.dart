import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      leading: IconButton(
    icon: Icon(Icons.arrow_back),color: Colors.white,
    onPressed: () {
      Navigator.of(context).pop();
    }
      )
        ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soybean Gyan is designed and developed by Indian Institute of Soybean Research, Indore to provide all the necessary farming information to farmers. The purpose of this application is to share agriculture-based new innovations and research with farmers.\n Soybean Gyan contains following aspects-',
              style: TextStyle(fontSize: 16.0),
            ),
            _buildLink('1, Crop Management', 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink('2. Insect Management', 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink('3. Weed Management', 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink('4. Disease Management', 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink('5. Farm Machinery', 'https://iisrindore.icar.gov.in/FARM1.HTM'),
            _buildLink('6. Soy Food Recipe', 'https://iisrindore.icar.gov.in/fooduses.html'),
          ],
        ),
      ),
    );
  }

  Widget _buildLink(String text, String url) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: about(),
  ));
}