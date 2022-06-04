import 'package:flutter/material.dart';
import 'costants.dart';

class PersoTextField extends StatefulWidget {
  String text='';
  PersoTextField(this.text) ;

  @override
  State<PersoTextField> createState() => _PersoTextFieldState();
}

class _PersoTextFieldState extends State<PersoTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: new InputDecoration(
        prefixIcon: const Icon(Icons.person),
        labelText: "Describe Your Issue...",
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
    }
}

