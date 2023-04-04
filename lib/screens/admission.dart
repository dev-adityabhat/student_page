import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AdmissionScreen extends StatelessWidget {
  const AdmissionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admissions"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),


        body:Container(
        child:   Center(
        child: IconButton(

        icon: Icon(Icons.person_2),
    iconSize: 70,
    onPressed: () async {
    const url = 'https://gpnashik.ac.in/Admission/Admission_HSC';
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
