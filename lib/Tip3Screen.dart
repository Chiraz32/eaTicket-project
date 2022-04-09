import 'package:flutter/material.dart';

import 'costants.dart';

class Tip3Screen extends StatefulWidget {
  const Tip3Screen({Key? key}) : super(key: key);

  @override
  State<Tip3Screen> createState() => _Tip3ScreenState();
}

class _Tip3ScreenState extends State<Tip3Screen> {
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
                      height: MediaQuery.of(context).size.height*0.3,
                      child:Text(
                          "Get an easy access\nto your university\nrestaurant",
                          style: TextStyle(
                            color: couleur2,
                            fontFamily: "Montserrat",
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          )
                      )
                  ),

                  Positioned(
                    top: MediaQuery.of(context).size.height*0.3*0.6,
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
                    top:MediaQuery.of(context).size.height*0.3*0.2,
                    left:MediaQuery.of(context).size.width*0.9*0.64 ,
                    child: Container(
                        child: Image(
                          width: MediaQuery.of(context).size.width*0.3,
                          height: MediaQuery.of(context).size.height*0.22,
                          image: AssetImage("assets/images/pasta-removebg-preview.png"),
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
                      image: AssetImage("assets/images/qr-code_1-removebg-preview.png"),
                    ),
                  ),
                  Positioned(
                    left: -55,
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
