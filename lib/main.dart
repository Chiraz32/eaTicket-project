import 'package:eaticket/menu_contribution.dart';
import 'dart:ui';


import 'package:flutter/material.dart' ;


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/welcome',
        routes: {
          '/welcome': (context) => const menu_contribution(),
          
      },
        title: 'EaTicket',
);

  }}
