import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Resultpage extends StatelessWidget {

  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
         return Scaffold(
           appBar: AppBar(
             title: Text("Result"),
             centerTitle: true,
             backgroundColor: Colors.deepPurple,
           ),






      body:Container(
        child:   Center(
          child: IconButton(

              icon: Icon(Icons.language),
              iconSize: 70,
              onPressed: () async {
                const url = 'https://gpnashik.ac.in/Academic/result';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              }
          ),
        ),
      ),
         );

  }
}
