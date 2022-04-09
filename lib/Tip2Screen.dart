import 'package:flutter/material.dart';
import 'costants.dart';

class Tip2Screen extends StatefulWidget {
  const Tip2Screen({Key? key}) : super(key: key);

  @override
  State<Tip2Screen> createState() => _Tip2ScreenState();
}

class _Tip2ScreenState extends State<Tip2Screen> {
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
                          "Have all your tickets\nin one wallet on\nyour phone ",
                          style: TextStyle(
                            color: couleur2,
                            fontFamily: "Montserrat",
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          )
                      )
                  ),

                  Positioned(
                    top: MediaQuery.of(context).size.height*0.35*0.55,
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
                    top:MediaQuery.of(context).size.height*0.35*0.5,
                    left:MediaQuery.of(context).size.width*0.9*0.8 ,
                    child: Container(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: bck_color,
                          backgroundImage: AssetImage("assets/images/image 7.png"),
                        )
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Image(
                      height: MediaQuery.of(context).size.height*0.48,
                      image: AssetImage("assets/images/wallet 1.png"),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image(
                      image: AssetImage("assets/images/image 8.png"),
                    ),
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}
