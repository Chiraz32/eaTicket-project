import 'package:flutter/material.dart';
import 'costants.dart';
import 'transcription.dart';

class History extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "History",
            style: TextStyle(
              color: couleur1,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back,
                  color: couleur1) // add custom icons also
              ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.logo_dev, size: 26.0, color: couleur1),
                )),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
                child: Column(
                  children: [
                    Transcription(
                      date: '29/03/2022 - 14:56:45',
                      num: 'N° 123456789',
                      service: ' Transfer to Foulen',
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    ),
                    Transcription(
                      date: '29/03/2022 - 14:56:45',
                      num: 'N° 123456789',
                      service: ' Transfer to Foulen',
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    ),
                    Transcription(
                      date: '29/03/2022 - 14:56:45',
                      num: 'N° 123456789',
                      service: ' Transfer to Foulen',
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    ),
                  ],
                ))));
  }
}
