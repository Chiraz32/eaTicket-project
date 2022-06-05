import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'costants.dart';
import 'profile.dart';

class profileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back, color: couleur1)),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.logout_rounded, size: 30, color: couleur4),
                )),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 0.3 * screenWidth,
                height: 0.3 * screenHeight,
                decoration: new BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person_sharp,
                  size: 0.2 * screenWidth,
                  color: Colors.white,
                )),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              child: Profile(
                userName: "Baha Bouali",
                userMail: "baha@gmail.com",
                userDateOfBirth: "08052000",
                userTotalExpenses: 50,
                userWallet: 10,
                userUni: "INSAT",
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Container(
              width: screenWidth * 0.4,
              child: FloatingActionButton.extended(
                label: Text(
                  'History',
                  style: TextStyle(
                    color: couleur2,
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.history,
                  size: 24.0,
                  color: couleur2,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              width: screenWidth * 0.4,
              child: FloatingActionButton.extended(
                label: Text(
                  'Dark mode',
                  style: TextStyle(
                    color: couleur2,
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.dark_mode_outlined,
                  size: 24.0,
                  color: couleur2,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Text(
              "Made With Love",
              style: TextStyle(
                color: couleur2,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
          ],
        )));
  }
}
