import 'package:flutter/material.dart';

import 'costants.dart';
class Controller2 extends StatefulWidget {
  const Controller2({Key? key}) : super(key: key);
  static String secondScreenName= 'tip1_screen';
  @override
  State<Controller2> createState() => _Controller2State();
}

class _Controller2State extends State<Controller2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:bck_color ,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("hahahaah")
        ],
      ),
    );
  }
}
