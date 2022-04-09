import 'package:flutter/material.dart';

import 'costants.dart';

class Tip4Screen extends StatefulWidget {
  const Tip4Screen({Key? key}) : super(key: key);

  @override
  State<Tip4Screen> createState() => _Tip4ScreenState();
}

class _Tip4ScreenState extends State<Tip4Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bck_color,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.1),
              Stack(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.35,
                      child:Text(
                          "Rate every meal and\ncontribute to improve\nthe quality of service ",
                          style: TextStyle(
                            color: couleur2,
                            fontFamily: "Montserrat",
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          )
                      )
                  ),

                  Positioned(
                    top: MediaQuery.of(context).size.height*0.35*0.66,
                    child: Container(
                      width:MediaQuery.of(context).size.width*0.4,
                      height: 6,
                      decoration: BoxDecoration(
                        color:couleur4,
                        borderRadius: BorderRadius.all(Radius.circular(90)),
                      ),
                    ),
                  ),
                  Positioned(
                    top:MediaQuery.of(context).size.height*0.35*0.45,
                    left:MediaQuery.of(context).size.width*0.9*0.64 ,
                    child: Container(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: bck_color,
                          backgroundImage: AssetImage("assets/images/image 8.png"),
                        )
                    ),
                  )
                ],
              ),

              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.55,
                    child: Image(
                      height : MediaQuery.of(context).size.height,
                      image: AssetImage("assets/images/image 4.png"),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    height: MediaQuery.of(context).size.height*0.2,
                    bottom: 0,
                    child: Image(
                      image: AssetImage("assets/images/image 7.png"),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}
