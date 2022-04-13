// problems : button arrow go back
//bold for the text 
//eye icon


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';



class PasswordCode extends StatefulWidget {
  const PasswordCode({Key? key}) : super(key: key);

  @override
  State<PasswordCode> createState() {
    //pressed = false;
    return _MyPasswordCode();
  }
}

class _MyPasswordCode extends State<PasswordCode> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4FB),
      body: Container(
          margin: const EdgeInsets.fromLTRB(68, 80, 68, 0),
          child: Column(
            children: [
              MyStatefulWidget(),
            ],
          )
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: 
        Padding( 
          padding: const EdgeInsets.fromLTRB(0,30, 0, 0),
          child:
            Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    /***************************** */
                    Row(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height:MediaQuery.of(context).size.width*0.07,
                              width:MediaQuery.of(context).size.width*0.07,
                              child:IconButton(
                                alignment : Alignment.center,
                                icon: Icon(CupertinoIcons.home),
                                // style: ButtonStyle(
                                //   backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                //   shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                                //     RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(200.0),
                                //       side: BorderSide(color: Colors.transparent)
                                //     )
                                //   )
                                // ),
                                onPressed:() {},
                              ) ,
                            ),
                          ],
                        ),
                        SizedBox(width:MediaQuery.of(context).size.width*0.5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              height:MediaQuery.of(context).size.width*0.07,
                              width:MediaQuery.of(context).size.width*0.07,
                              child:ElevatedButton(
                                child: Text("Logo"),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xff3C84C0)),
                                  shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(200.0),
                                      side: BorderSide(color: Colors.transparent)
                                    )
                                  )
                                ),
                                onPressed:() {},
                              ) ,
                            ),
                          ],
                        )
                        
                      ]
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02),
                    Text(
                      "Enter the code sent in the email",
                      style: TextStyle(
                        color: Color(0xff4D89EC),
                        fontSize:30.0,
                        fontFamily: "Montserrat",
                        fontWeight:FontWeight.bold ,
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                      indent: 0,
                      endIndent: 200,
                      color: Color(0xffE6B32A),
                    ), 
                    /*************************** */
                    SizedBox(height: MediaQuery.of(context).size.height*0.1),
                    Row(
                      children: <Widget>[
                          Container(
                            padding:EdgeInsets.all(2) ,
                            width: MediaQuery.of(context).size.width*0.11,
                            height: MediaQuery.of(context).size.width*0.11,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: const BorderSide(
                                    color: Color(0xff3C84C0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          
                          Container(
                            padding:EdgeInsets.all(2) ,
                            width: MediaQuery.of(context).size.width*0.11,
                            height: MediaQuery.of(context).size.width*0.11,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                fillColor: Colors.red,
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: const BorderSide(
                                    color: Color(0xff3C84C0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding:EdgeInsets.all(2) ,
                            width: MediaQuery.of(context).size.width*0.11,
                            height: MediaQuery.of(context).size.width*0.11,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                fillColor: Colors.red,
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: const BorderSide(
                                    color: Color(0xff3C84C0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding:EdgeInsets.all(2) ,
                            width: MediaQuery.of(context).size.width*0.11,
                            height: MediaQuery.of(context).size.width*0.11,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                fillColor: Colors.red,
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: const BorderSide(
                                    color: Color(0xff3C84C0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding:EdgeInsets.all(2) ,
                            width: MediaQuery.of(context).size.width*0.11,
                            height: MediaQuery.of(context).size.width*0.11,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                fillColor: Colors.red,
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: const BorderSide(
                                    color: Color(0xff3C84C0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding:EdgeInsets.all(2) ,
                            width: MediaQuery.of(context).size.width*0.11,
                            height: MediaQuery.of(context).size.width*0.11,
                            child: TextFormField(
                              decoration: new InputDecoration(
                                fillColor: Colors.red,
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: const BorderSide(
                                    color: Color(0xff3C84C0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
    
                          
                      ],
                    ),
                   
                  
                    SizedBox(height: MediaQuery.of(context).size.height*0.06),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height*0.06,
                      child: ElevatedButton(
                        child: Text("Reset my password"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffE6B32A)),
                          shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(200.0),
                              side: BorderSide(color: Colors.transparent)
                            )
                          )
                        ),
                        onPressed:() {
    
                        },
                      ),
                    ),
                   
                    SizedBox(height: MediaQuery.of(context).size.height*0.03),
                    
    
                  ]
                ),
              ]
            ),
        ),
      ),
    );
  }
          
}  


