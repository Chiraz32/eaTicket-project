import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'costants.dart';

class Profile extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String userName;
  final String userUni;
  final String userDateOfBirth;
  final String userMail;
  final int userWallet;
  final int userTotalExpenses;

  const Profile(
      {Key? key,
      required this.userName,
      required this.userDateOfBirth,
      required this.userMail,
      required this.userUni,
      required this.userWallet,
      required this.userTotalExpenses,
      required this.screenHeight,
      required this.screenWidth})
      : super(key: key);

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        width: 0.5 * screenWidth,
        height: 0.25 * screenHeight,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                userName,
                style: TextStyle(
                  color: couleur2,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                userUni,
                style: TextStyle(
                  color: couleur1,
                  fontSize: 25,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    size: 24.0,
                    color: couleur1,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    userMail,
                    style: TextStyle(
                      color: couleur1,
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.calendar_today,
                    size: 24.0,
                    color: couleur1,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    userDateOfBirth,
                    style: TextStyle(
                      color: couleur1,
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              )
            ]),
      ),
      SizedBox(
        height: screenHeight * 0.02,
      ),
      Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.75,
                  height: 1,
                  color: couleur1,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Wallet",
                          style: TextStyle(
                            color: couleur1,
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          userWallet.toString(),
                          style: TextStyle(
                            color: couleur4,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    flex: 200,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: screenWidth * 0.1,
                      width: 1,
                      color: couleur1,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total Expenses",
                          style: TextStyle(
                            color: couleur1,
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          userTotalExpenses.toString(),
                          style: TextStyle(
                            color: couleur4,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    flex: 200,
                  ),
                ]),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.75,
                  height: 1,
                  color: couleur1,
                ),
              ],
            ),
          ]),
    ]);
  }
}
