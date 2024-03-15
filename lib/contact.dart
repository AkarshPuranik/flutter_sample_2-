import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Information',),foregroundColor: Colors.white, backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
      ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('ICAR-Indian Institute Of Soybean Research, Khandwa Road, Indore(M.P.)-452001'),
            SizedBox(height: 16),
            Text(
              'Phone',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildContactItem('Dr. V.S. Bhatia, Director', '0731-2476188'),
            _buildContactItem('Dr. A.N. Sharma (Insect Management)', '9425958694'),
            _buildContactItem('Dr. Sunil Dutt Billore (Weed Management)', '9977763727'),
            _buildContactItem('Dr. B.U. Dupare (Crop Management)', '9425964016'),
            _buildContactItem('Dr. D.V. Singh (Farm Machinery)', '0731-2437922'),
            _buildContactItem('Dr. M.K. Kuchlan (Seed and Variety)', '9340650457'),
            _buildContactItem('Dr.Sanjeev Kumar (Disease Management)', '9407072727'),
            _buildContactItem('Dr. Laxman Singh Rajput (Disease Management)', '7065157572'),
            SizedBox(height: 16),
            Text(
              'For App Related Information Contact',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildContactItem('Dr. Savita Kolhe, Principal Scientist', '0731-2437911'),
            SizedBox(height: 16),
            Text(
              'Email',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('soybean.director@icar.gov.in',textAlign: TextAlign.center,),
            Text('dsrdirector@gmail.com',textAlign: TextAlign.center),
            SizedBox(height: 16),
            Text(
              'Fax',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('0731-2470520',textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(String name, String phoneNumber) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        SizedBox(height: 4),
        Text(phoneNumber),
        Divider(),
      ],
    );
  }
}