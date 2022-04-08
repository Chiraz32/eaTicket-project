import 'package:eaticket/TopBar.dart';
import 'package:eaticket/costants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Paiement extends StatefulWidget {
  const Paiement({Key? key}) : super(key: key);
  @override
  State<Paiement> createState() => _PaiementState();
}

class _PaiementState extends State<Paiement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bck_color,
      body: SafeArea(
        child: Column(
          children: [
            TopBar(),
            SizedBox(height: MediaQuery.of(context).size.height*0.15,),
            _TicketButton(
              onClick: (){},
              text: "Get a ticket from a friend",
              assetPath: "assets/images/SVGs/get.svg",
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.035,),
            _TicketButton(
              onClick: (){},
              text: "Send a ticket   to a friend",
              assetPath: "assets/images/SVGs/send.svg",
            )
          ],
        ),
      ),
    );
  }
  Container _TicketButton({String? text, String? assetPath,Function? onClick }){
    return (Container(
      height: MediaQuery.of(context).size.height*0.13,
      width: MediaQuery.of(context).size.width*0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextButton(
        onPressed: (){onClick;},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              '${assetPath}',
              color: couleur4,
              height: 40,
              width: 40,
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.7*0.04,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*0.7*0.5,
              height: MediaQuery.of(context).size.height*0.13,
              child: Text('${text}',style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    ));
  }
}




