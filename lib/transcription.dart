import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'costants.dart';

class Transcription extends StatelessWidget {
  final String date;
  final String num;
  final String service;
  final double screenHeight;
  final double screenWidth;
  const Transcription(
      {Key? key,
      required this.date,
      required this.num,
      required this.service,
      required this.screenHeight,
      required this.screenWidth})
      : super(key: key);

  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(15.0),
            width: screenWidth * 0.8,
            height: screenHeight * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: couleur2.withOpacity(0.7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(date, style: TextStyle(color: Colors.white)),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(children: <Widget>[
                  Text("Transcrpiton",
                      style: TextStyle(
                          color: couleur2, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: screenWidth * 0.4,
                  ),
                  Text(num, style: TextStyle(color: Colors.white)),
                ]),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  width: screenWidth * 0.75,
                  height: 1,
                  color: Colors.white,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(children: <Widget>[
                  Text("Service",
                      style: TextStyle(
                          color: couleur2, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: screenWidth * 0.4,
                  ),
                  Text(service, style: TextStyle(color: Colors.white)),
                ]),
              ],
            ),
          )
        ]);
  }
}
