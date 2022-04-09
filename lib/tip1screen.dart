import 'package:eaticket/costants.dart';
import 'package:flutter/material.dart';

class Tip1Screen extends StatefulWidget {
  const Tip1Screen({Key? key}) : super(key: key);

  @override
  State<Tip1Screen> createState() => _Tip1ScreenState();
}

class _Tip1ScreenState extends State<Tip1Screen> {
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
                           "Buy your restaurant tickets easily\nwherever\nyou are ",
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
                       top:MediaQuery.of(context).size.height*0.35*0.42,
                       left:MediaQuery.of(context).size.width*0.9*0.64 ,
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
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.5,
                    child: Image(
                      image: AssetImage("assets/images/mobile-in-hand 1.png"),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    height: MediaQuery.of(context).size.height*0.2,
                    bottom: 0,
                    child: Image(
                      image: AssetImage("assets/images/image 5.png"),
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
