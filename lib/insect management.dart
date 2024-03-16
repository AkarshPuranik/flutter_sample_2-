import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class insect extends StatefulWidget {
  const insect({Key? key}) : super(key: key);

  @override
  State<insect> createState() => _insectState();
}

class _insectState extends State<insect> {
  @override
  void initState() {
    super.initState();
    _launchURL();
  }

  _launchURL() async {
    const url = 'http://14.139.54.69/DSSIPM/MainHomePage.htm';
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true, enableJavaScript: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}