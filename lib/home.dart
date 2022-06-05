import 'package:eaticket/rating_widget.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'meal_in_home.dart';
import 'costants.dart';
import 'meal_model.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _daysList = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday'
  ];
  late Meal _currentMeal;
  late final String _currentDate =
      DateFormat('EEEE').format(DateTime.now()) as String;

  Meal mealChecker() {
    if (_daysList.contains(_currentDate)) {
      _currentMeal = meals.firstWhere((element) {
        return element.date ==
            DateFormat('EEEE').format(DateTime.now()) as String;
      });
    } else {
      _currentMeal = meals.firstWhere((element) {
        return element.date == 'Monday';
      });
    }
    return _currentMeal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/SVGs/01 align center.svg',
                        height: 30,
                        width: 30,
                      )),
                  IconButton(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/SVGs/01 align center.svg',
                        height: 30,
                        width: 30,
                      )),
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: couleur2_lightOpacity),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Container(
                    child: Row(
                      children: [
                        const Text(
                          '7',
                          style: TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset('assets/images/SVGs/receipt 2.svg'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '  in your wallet',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/images/SVGs/add.svg'))
                    ],
                  )
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          FlipCard(
              flipOnTouch: true,
              front: HomeMeal(mealChecker().date, mealChecker().entree,
                  mealChecker().mainCourse, mealChecker().dessert),
              back: RatingWidget()),
        ],
      )),
    ));
  }
}
