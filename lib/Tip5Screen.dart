import 'package:flutter/material.dart';

import 'costants.dart';

class Tip5Screen extends StatefulWidget {
  const Tip5Screen({Key? key}) : super(key: key);

  @override
  State<Tip5Screen> createState() => _Tip5ScreenState();
}

class _Tip5ScreenState extends State<Tip5Screen> {
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
                          "\nExchange tickets with\nyour friends",
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
                    top:MediaQuery.of(context).size.height*0.3*0.5,
                    left:MediaQuery.of(context).size.width*0.9*0.64 ,
                    child: Container(
                        child: Image(
                          image: AssetImage("assets/images/pasta-removebg-preview - Copie.png"),
                        )
                    ),
                  )
                ],
              ),
              Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      left: MediaQuery.of(context).size.width*0.11,
                      bottom: MediaQuery.of(context).size.height*0.1,
                      child: Image(
                        width: MediaQuery.of(context).size.width*0.8,
                        image: AssetImage("assets/images/image 3.png"),
                      ),
                    ),
                    Positioned(
                      left: -60,
                      height: MediaQuery.of(context).size.height*0.2,
                      bottom: 0,
                      child: Image(
                        image: AssetImage("assets/images/image 8.png"),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width*0.25,
                      bottom: 0,
                      child: Container(
                          height: MediaQuery.of(context).size.height*0.08,
                          alignment: Alignment.center,
                          width:  MediaQuery.of(context).size.width*0.5,
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
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Log in ",
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
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
