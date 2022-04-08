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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.2),
             Stack(
                 children: [
                   Container(
                     width: MediaQuery.of(context).size.width*0.8,
                     child:Text(
                         "Buy your restaurant tickets easily      wherever                    you are ",
                         style: TextStyle(
                           color: couleur2,
                           fontFamily: "Montserrat",
                           fontSize: 30,
                           fontWeight: FontWeight.w900,
                         )
                     )
                     ),

                   Positioned(
                     left: 10,
                     top: 70,
                     child: Container(
                           width:MediaQuery.of(context).size.width*0.4,
                           height: 6,
                           decoration: BoxDecoration(
                             color:couleur4,
                             borderRadius: BorderRadius.all(Radius.circular(40)),
                           ),
                         ),
                   ),
                   Positioned(
                     top: 70,
                     left:220 ,
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
          ],
        )
    );
  }
}
