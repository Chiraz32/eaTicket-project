import 'package:flutter/material.dart';

class Service {

  static Future openDialog({ required BuildContext? context ,List<Widget>? children, ShapeBorder? shape, Color? back , required int x}) => showDialog(
      context: context!,
      builder: (context)=>SimpleDialog(
        backgroundColor: back,
        shape: shape,
        children: children,
        contentPadding: (x>0) ? EdgeInsets.zero : EdgeInsets.fromLTRB(0, 12, 0, 16),
      )
  );

  static dialogBasedOnRequest({required BuildContext context ,Color? color, String? message}){
    Service.openDialog(
        context: context,
        x: -1,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Container(
            alignment: Alignment.center,
            child: Text(
              "$message",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20),
            )
        ),
        back: color
    );
  }
}