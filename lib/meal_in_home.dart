import 'package:flutter/material.dart';
import 'costants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMeal extends StatelessWidget {
  String date;
  String entree;
  String mainCourse;
  String dessert;
  bool flip = false;

  HomeMeal(this.date, this.entree, this.mainCourse, this.dessert);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: couleur2_lightOpacity,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/SVGs/knife_fork.svg'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              const Text(
                'Today\'s Menu',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: bck_color_light,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                SvgPicture.asset('assets/images/SVGs/fork.svg'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  entree,
                  style: TextStyle(
                      fontSize: 20,
                      color: couleur1,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: bck_color_light,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                SvgPicture.asset('assets/images/SVGs/spoon.svg'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  mainCourse,
                  style: TextStyle(
                      fontSize: 20,
                      color: couleur1,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: bck_color_light,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                SvgPicture.asset('assets/images/SVGs/knife.svg'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  dessert,
                  style: TextStyle(
                      fontSize: 20,
                      color: couleur1,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          TextButton.icon(
              onPressed: () {
                flip = true;
              },
              icon: Image.asset(
                'assets/images/good-review 1.png',
                height: 50,
                width: 50,
              ),
              label: const Text(
                'Flip the card to rate today\'s menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ))
        ],
      ),
    );
  }
}
