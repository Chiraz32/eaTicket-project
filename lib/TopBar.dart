import 'package:eaticket/Classes/wallet.dart';
import 'package:eaticket/http_requests/http-request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'costants.dart';
class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}



class _TopBarState extends State<TopBar> {
  HttpService httpService=HttpService();
  int balance=0;

  @override
  void initState() {
    super.initState();
    // getBalance();

  }

  getBalance() async {
    Wallet message= await httpService.getBalance(2);
    if(message !=null ){
      balance= message.balance!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*0.01,),
        IconButton(
          color: couleur1,
          onPressed: (){},
          icon: SvgPicture.asset(
            "assets/images/SVGs/profile.svg",
            height: 60,
            width: 60,
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.7,),
        Row(
          children: [
            Text('$balance',
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color:couleur4,fontFamily: "Montserrat"),
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.02,),
            SvgPicture.asset(
              "assets/images/SVGs/ticket.svg",
              color: couleur4,
              height: 20,
              width: 20,
            ),
          ],
        ),
      ],
    );
  }

  // Future<String> getBalance(id) async {
  //   return this.httpService.getWalletBalance(id);
  // }
}
