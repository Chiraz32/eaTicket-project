import 'dart:io';

import 'package:eaticket/Classes/error.dart';
import 'package:eaticket/Classes/transaction.dart';
import 'package:eaticket/TopBar.dart';
import 'package:eaticket/costants.dart';
import 'package:eaticket/http_requests/http-request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'Service/Services.dart';

class Paiement extends StatefulWidget {
  const Paiement({Key? key}) : super(key: key);
  @override
  State<Paiement> createState() => _PaiementState();
}

class _PaiementState extends State<Paiement> {
  final qrKey=GlobalKey(debugLabel: 'QR');
  HttpService httpService=HttpService();
  Barcode? barCode;
  QRViewController? controller;
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Future<void> reassemble() async {
    super.reassemble();
    if(Platform.isAndroid){
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  doTransaction() async {
    dynamic message=await httpService.doTransaction(2, 3, 4);
    if (message!=null){
      if(message is Transaction){
        Service.dialogBasedOnRequest(context: context ,color: couleur1 , message: "Successfully Done");
      }else if (message is Error){
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
          children: [
            TopBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            _TicketButton(
              onClick: () {
                Service.openDialog(
                  context: context,
                  x: 1,
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: buildQrview(context),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.75,
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: IconButton(
                            onPressed: () async {
                              await controller?.toggleFlash();
                              setState(() {});
                            }
                            , icon: Icon(Icons.flash_on_rounded),
                            color: couleur2,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: IconButton(
                            onPressed: () async {
                              await controller?.flipCamera();
                              setState(() {});
                            }
                            , icon: Icon(Icons.flip_camera_ios),
                            color: couleur2,
                          ),
                        )
                      ],
                    ),
                  ],

                );
              },
              text: "Get a ticket from a friend",
              assetPath: "assets/images/SVGs/get.svg",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            _TicketButton(
              onClick: () {
                Service.openDialog(
                  context: context,
                  x: -1,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Send a ticket\nto a friend",
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
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height*0.4,
                        child: Image(image: AssetImage("assets/images/image 3.png")),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            "ID:123b45638fezf",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    ],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20),
                        )
                    ),
                    back: couleur1
                );
                },
              text: "Send a ticket   to a friend",
              assetPath: "assets/images/SVGs/send.svg",
            ),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.3,
              width:MediaQuery.of(context).size.width * 0.6 ,
                child: Image(
                    image: AssetImage(
                        "assets/images/fist-bump-gesture-3640507 1.png")
                )
            )
          ],
        ),
      ),
    );
  }

  Container _TicketButton(
      {String? text, String? assetPath, Function? onClick}) {
    return (Container(
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextButton(
        onPressed: () {
          onClick!();
        },
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7 * 0.04,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.7 * 0.5,
              height: MediaQuery.of(context).size.height * 0.13,
              child: Text(
                '${text}',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget buildQrview(BuildContext context)=> QRView(
    key: qrKey,
    onQRViewCreated: onQRViewCreated,
    overlay: QrScannerOverlayShape(
      borderColor: couleur1,
      borderWidth: 5,
      borderRadius: 10,
      cutOutSize: MediaQuery.of(context).size.width*0.65,
    ),
  );
  void onQRViewCreated(QRViewController controller) {
    setState(()=>this.controller=controller);
    controller.scannedDataStream.listen((barCode) {
      setState(() {
        this.barCode=barCode;
      });
    });
  }

}
