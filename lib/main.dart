import 'package:eaticket/menu_contribution.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'controller.dart';
import 'password_forgotten.dart';
import 'login.dart';
import 'new_password.dart';
import 'password_code.dart';
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
      home: Controller(),
    );
  }
}
