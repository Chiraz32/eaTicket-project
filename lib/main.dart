import 'package:eaticket/Tip2Screen.dart';
import 'package:eaticket/Tip3Screen.dart';
import 'package:eaticket/Tip4Screen.dart';
import 'package:eaticket/controller2.dart';
import 'package:eaticket/tip1screen.dart';
import 'package:eaticket/welcomescreen.dart';

import 'Tip5Screen.dart';
import 'controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tip5Screen(),
      /*initialRoute: WelcomeScreen.routeName,
      routes: {
        WelcomeScreen.routeName: (context)=>WelcomeScreen(),
        Controller2.secondScreenName: (context)=>Controller2(),
      },*/
    );
  }
}
