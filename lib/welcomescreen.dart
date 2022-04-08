import 'package:eaticket/costants.dart';
import 'package:eaticket/controller2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String routeName="WelcomeScreen";
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bck_color,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.12),
            CircleAvatar(
              radius: 90,
                backgroundImage: AssetImage("assets/images/place.jpg"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*0.75,
              child: Text(
                  "Welcome",
              style:TextStyle(
                  color: couleur1,
                  fontSize:75,
                  fontWeight:FontWeight.w900,
                  fontFamily: "KaushanScript" )
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.01),
            Container(
              height: MediaQuery.of(context).size.height*0.08,
              alignment: Alignment.center,
              width:  MediaQuery.of(context).size.width*0.6,
              decoration: BoxDecoration(
                color: couleur4,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(-1, -1),
                      blurRadius: 0,
                      spreadRadius: 0
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () { Navigator.pushNamed(context,Controller2.secondScreenName); },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w900
                      ),
                        ),
                    SizedBox(
                    width:MediaQuery.of(context).size.width*0.5*0.05,),
                   ImageIcon(
                     AssetImage("assets/images/fleche.png"),
                     color: Colors.white,
                   )

                  ],

                ),
              )
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.13),
            Container(
              width: MediaQuery.of(context).size.width*0.8,
                alignment: Alignment.center,
              child: Text("Select your language ",
              style: TextStyle(
              color: couleur1,
                fontSize:25,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w900
             )
             )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: (){},
                    icon:CircleAvatar(backgroundImage: AssetImage("assets/images/Ellipse 40.png"),
                    )
                ),
                IconButton(
                    onPressed: (){},
                    icon:CircleAvatar(backgroundImage: AssetImage("assets/images/france 1.png"),))
              ],

            )

          ],
        ),
      ),
    );
  }
}
