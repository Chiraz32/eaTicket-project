// problems : button arrow go back

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';



class PasswordForgotten extends StatefulWidget {
  const PasswordForgotten({Key? key}) : super(key: key);

  @override
  State<PasswordForgotten> createState() {
    //pressed = false;
    return _MyPasswordForgotten();
  }
}

class _MyPasswordForgotten extends State<PasswordForgotten> {
 
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
    return Column( 
      children:<Widget>[
                Row(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height:MediaQuery.of(context).size.width*0.07,
                          width:MediaQuery.of(context).size.width*0.07,
                          child:IconButton(
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
                  "We will send you a code via your email",
                  style: TextStyle(
                    color: Color(0xff4D89EC),
                    fontSize:30.0,
                    fontFamily: "Montserrat",
                    //fontWeight:"bold" ,
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 0,
                  endIndent: 200,
                  color: Color(0xffE6B32A),
                ), 
                SizedBox(height: MediaQuery.of(context).size.height*0.25),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: new InputDecoration(
                          prefixIcon: const Icon(CupertinoIcons.at,color: Color(0xff3C84C0)),
                          labelText: "Email",
                          hintStyle:TextStyle(
                            color: Color(0xff3C84C0),
                            fontSize:18.0,
                            fontFamily: "Montserrat",
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.06),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: MediaQuery.of(context).size.height*0.06,
                        child: ElevatedButton(
                          child: Text("Send me a code"),
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
                    ],
                  )
                )
                

      ]
    );
  }
          
}  


