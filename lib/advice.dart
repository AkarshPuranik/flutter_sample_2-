import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Advice extends StatefulWidget {
  const Advice({Key? key}) : super(key: key);

  @override
  State<Advice> createState() => _AdviceState();
}

class _AdviceState extends State<Advice> {
  @override
  void initState() {
    super.initState();
    _launchURL();
  }

  _launchURL() async {
    const url = 'https://iisrindore.icar.gov.in/Advisory.html';
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