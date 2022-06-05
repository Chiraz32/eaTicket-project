//bold for the text 
//color for the tzxt field

import 'package:flutter/material.dart';
import 'main.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() {
    //pressed = false;
    return _MyLogin();
  }
}

class _MyLogin extends State<Login> {
 
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
    return Form(
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
                  SizedBox(
                    height:250.0,
                    width:250.0,
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
                  SizedBox(height: MediaQuery.of(context).size.height*0.06),
                  TextFormField(
                    decoration: new InputDecoration(
                      fillColor: Colors.red,
                      prefixIcon: const Icon(Icons.person),
                      labelText: "Username",
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        borderSide: const BorderSide(
                          color: Color(0xff3C84C0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.04),
                  TextFormField(
                    obscureText : true,
                    obscuringCharacter : '•',
                    decoration: new InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      labelText: "Password",
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
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.06),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.4,
                    height: MediaQuery.of(context).size.height*0.06,
                    child: ElevatedButton(
                      child: Text("Login"),
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
                  Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Color(0xff3C84C0),
                      fontSize:18.0,
                      fontFamily: "Montserrat",
                      //fontWeight:"bold" ,
                      ),
                    )

                ]
              ),
            ]
          ),
      ),
    );
  }
          
}  


