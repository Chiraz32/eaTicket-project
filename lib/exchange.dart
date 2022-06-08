import 'package:eaticket/Classes/error.dart';
import 'package:eaticket/Service/Services.dart';
import 'package:eaticket/TopBar.dart';
import 'package:eaticket/http_requests/http-request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Classes/wallet.dart';
import 'costants.dart';

class Exchange extends StatefulWidget {
  const Exchange({Key? key}) : super(key: key);

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  int _ticketsNumber =0;
  double _price =0.0;
  dynamic message ;
  HttpService httpService=HttpService();
  void _incrementTicketNumber(){
    setState(() {
      _ticketsNumber++;
      _price=_ticketsNumber*2/10;
    });
  }
  void _decrementTicketNumber(){
    setState(() {
      if(_ticketsNumber>0){
        _ticketsNumber--;
        _price=_ticketsNumber*2/10;
      }
    });
  }

  patchingWallet() async {
    message= await httpService.buyTicket(2, _ticketsNumber);
    if (message !=null){
      if(message is Wallet){
        setState(() {
          Service.dialogBasedOnRequest(context: context,color: couleur1, message: "Your Wallet Is Updated");
          _ticketsNumber=0;
          _price=0;
        });
      }else if(message is Error) {
        Error error=message;
        Service.dialogBasedOnRequest(context: context,color: couleur1, message: error.message);
      }
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bck_color,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopBar(),
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Container(
                width: MediaQuery.of(context).size.width*0.7,
                child: Text("How many tickets do you want to buy ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontFamily: "Montserrat",color: couleur1 ,fontWeight: FontWeight.w900),
                    softWrap: true
                ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: const BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(0),
                        ),
                    ),
                  width: MediaQuery.of(context).size.width*0.6*0.25,
                    child: IconButton(
                      color: couleur1,
                      onPressed: (){_decrementTicketNumber();},
                      icon: SvgPicture.asset(
                        "assets/images/SVGs/minus.svg",
                        height: 40,
                        width: 30,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.6*0.5,
                    alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height*0.1,
                    color: Colors.white,
                      child: Text('$_ticketsNumber'
                        , textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 35,fontFamily: "Montserrat",color: couleur2, fontWeight: FontWeight.w900),)),
                  Container(
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: const BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width*0.6*0.25,
                    child: IconButton(
                      color: couleur1,
                      onPressed: (){_incrementTicketNumber();},
                      icon: SvgPicture.asset(
                        "assets/images/SVGs/plus.svg",
                        height: 40,
                        width: 30,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            Container(
              width: MediaQuery.of(context).size.width*0.7,
              child: Text("Total Price",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontFamily: "Montserrat",color: couleur1 ,fontWeight: FontWeight.w900),
                  softWrap: true
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: couleur4 ,
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              width: 85,
              height: 5,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.7,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                        offset: Offset(-1, -1),
                        blurRadius: 0,
                       spreadRadius: 0
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Text(
                '$_price TND',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35,fontFamily: "Montserrat",color: couleur2, fontWeight: FontWeight.w900)
                ,)
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _button(textColor: couleur4,
                  textField: "Cancel",
                  back: Colors.white,
                  onClick: (){
                  setState(() {
                    _ticketsNumber=0;
                    _price=0;
                  });
                  }
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                _button(
                  textField: "Confirm",
                  textColor: Colors.white,
                  back: Color(0xffE6B32A),
                  onClick: ()  {
                    setState(() {
                      if(_ticketsNumber==0){
                        Service.openDialog(
                            context: context,
                            x: -1,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Please Enter The\nNumber Of Tickets To Buy",
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            ],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20),
                                )
                            ),
                            back: couleur1
                        );
                      }else {
                          patchingWallet();
                      }

                    });

                  }
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  Container _button({String? textField,  Color? textColor , Color?  back, Function? onClick})
  {
    return Container(
      width:  MediaQuery.of(context).size.width*0.4,
      decoration: BoxDecoration(
        color: back,
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
        onPressed: (){
          onClick!();
        },
        child: Text('$textField',
          style: TextStyle(fontSize: 25,fontFamily: "Montserrat",color: textColor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}

