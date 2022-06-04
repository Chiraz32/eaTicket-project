import 'package:eaticket/costants.dart';
import 'package:flutter/material.dart';
import 'package:eaticket/TopBar.dart';
import 'package:flutter_svg/svg.dart';
import 'costants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          const TopBar(),
          SizedBox(
            height: 500,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 268,
                      height: 228,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: couleur1,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.1),
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    "assets/images/SVGs/knife_fork.svg",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03),
                                const Text("Monday",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 201,
                              height: 30,
                              decoration: BoxDecoration(
                                color: couleur5,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/knife_fork.svg",
                                      height: 30,
                                      width: 30,
                                      color: couleur1,
                                    ),
                                  ),
                                  const Text("Salade tunisienne",
                                      style: TextStyle(
                                        color: Color(0xff3C84C0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 201,
                              height: 30,
                              decoration: BoxDecoration(
                                color: couleur5,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/fork.svg",
                                      height: 30,
                                      width: 30,
                                      color: couleur1,
                                    ),
                                  ),
                                  const Text("Kouskous",
                                      style: TextStyle(
                                        color: Color(0xff3C84C0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 201,
                              height: 30,
                              decoration: BoxDecoration(
                                color: couleur5,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/knife.svg",
                                      height: 30,
                                      width: 30,
                                      color: couleur1,
                                    ),
                                  ),
                                  const Text("Fruit de saison",
                                      style: TextStyle(
                                        color: Color(0xff3C84C0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 268,
                      height: 228,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: couleur1,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.1),
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    "assets/images/SVGs/knife_fork.svg",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03),
                                const Text("Tuesday",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 201,
                              height: 30,
                              decoration: BoxDecoration(
                                color: couleur5,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/knife_fork.svg",
                                      height: 30,
                                      width: 30,
                                      color: couleur1,
                                    ),
                                  ),
                                  const Text("Salade tunisienne",
                                      style: TextStyle(
                                        color: Color(0xff3C84C0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 201,
                              height: 30,
                              decoration: BoxDecoration(
                                color: couleur5,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/fork.svg",
                                      height: 30,
                                      width: 30,
                                      color: couleur1,
                                    ),
                                  ),
                                  const Text("Kouskous",
                                      style: TextStyle(
                                        color: Color(0xff3C84C0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 201,
                              height: 30,
                              decoration: BoxDecoration(
                                color: couleur5,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/knife.svg",
                                      height: 30,
                                      width: 30,
                                      color: couleur1,
                                    ),
                                  ),
                                  const Text("Fruit de saison",
                                      style: TextStyle(
                                        color: Color(0xff3C84C0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 268,
                        height: 228,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: couleur1,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.1),
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/knife_fork.svg",
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.03),
                                  const Text("Wednesday",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 201,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: couleur5,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/images/SVGs/knife_fork.svg",
                                        height: 30,
                                        width: 30,
                                        color: couleur1,
                                      ),
                                    ),
                                    const Text("Salade tunisienne",
                                        style: TextStyle(
                                          color: Color(0xff3C84C0),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 201,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: couleur5,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/images/SVGs/fork.svg",
                                        height: 30,
                                        width: 30,
                                        color: couleur1,
                                      ),
                                    ),
                                    const Text("Kouskous",
                                        style: TextStyle(
                                          color: Color(0xff3C84C0),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 201,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: couleur5,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/images/SVGs/knife.svg",
                                        height: 30,
                                        width: 30,
                                        color: couleur1,
                                      ),
                                    ),
                                    const Text("Fruit de saison",
                                        style: TextStyle(
                                          color: Color(0xff3C84C0),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 268,
                        height: 228,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: couleur1,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.1),
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/knife_fork.svg",
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.03),
                                  const Text("Thursday",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 201,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: couleur5,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/images/SVGs/knife_fork.svg",
                                        height: 30,
                                        width: 30,
                                        color: couleur1,
                                      ),
                                    ),
                                    const Text("Salade tunisienne",
                                        style: TextStyle(
                                          color: Color(0xff3C84C0),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 201,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: couleur5,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/images/SVGs/fork.svg",
                                        height: 30,
                                        width: 30,
                                        color: couleur1,
                                      ),
                                    ),
                                    const Text("Kouskous",
                                        style: TextStyle(
                                          color: Color(0xff3C84C0),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 201,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: couleur5,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/images/SVGs/knife.svg",
                                        height: 30,
                                        width: 30,
                                        color: couleur1,
                                      ),
                                    ),
                                    const Text("Fruit de saison",
                                        style: TextStyle(
                                          color: Color(0xff3C84C0),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 268,
                          height: 228,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: couleur1,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1),
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/images/SVGs/knife_fork.svg",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03),
                                    const Text("Friday",
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 201,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: couleur5,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          "assets/images/SVGs/knife_fork.svg",
                                          height: 30,
                                          width: 30,
                                          color: couleur1,
                                        ),
                                      ),
                                      const Text("Salade tunisienne",
                                          style: TextStyle(
                                            color: Color(0xff3C84C0),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 201,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: couleur5,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          "assets/images/SVGs/fork.svg",
                                          height: 30,
                                          width: 30,
                                          color: couleur1,
                                        ),
                                      ),
                                      const Text("Kouskous",
                                          style: TextStyle(
                                            color: Color(0xff3C84C0),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 201,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: couleur5,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          "assets/images/SVGs/knife.svg",
                                          height: 30,
                                          width: 30,
                                          color: couleur1,
                                        ),
                                      ),
                                      const Text("Fruit de saison",
                                          style: TextStyle(
                                            color: Color(0xff3C84C0),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 268,
                          height: 228,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: couleur1,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1),
                                    IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        "assets/images/SVGs/knife_fork.svg",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03),
                                    const Text("Saturday",
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 201,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: couleur5,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          "assets/images/SVGs/knife_fork.svg",
                                          height: 30,
                                          width: 30,
                                          color: couleur1,
                                        ),
                                      ),
                                      const Text("Salade tunisienne",
                                          style: TextStyle(
                                            color: Color(0xff3C84C0),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 201,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: couleur5,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          "assets/images/SVGs/fork.svg",
                                          height: 30,
                                          width: 30,
                                          color: couleur1,
                                        ),
                                      ),
                                      const Text("Kouskous",
                                          style: TextStyle(
                                            color: Color(0xff3C84C0),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 201,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: couleur5,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          "assets/images/SVGs/knife.svg",
                                          height: 30,
                                          width: 30,
                                          color: couleur1,
                                        ),
                                      ),
                                      const Text("Fruit de saison",
                                          style: TextStyle(
                                            color: Color(0xff3C84C0),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 268,
                      height: 228,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: couleur1,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.1),
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    "assets/images/SVGs/knife_fork.svg",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03),
                                const Text("Sunday",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 201,
                              height: 30,
                              decoration: BoxDecoration(
                                color: couleur5,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/knife_fork.svg",
                                      height: 30,
                                      width: 30,
                                      color: couleur1,
                                    ),
                                  ),
                                  const Text("Salade tunisienne",
                                      style: TextStyle(
                                        color: Color(0xff3C84C0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 201,
                              height: 30,
                              decoration: BoxDecoration(
                                color: couleur5,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/fork.svg",
                                      height: 30,
                                      width: 30,
                                      color: couleur1,
                                    ),
                                  ),
                                  const Text("Kouskous",
                                      style: TextStyle(
                                        color: Color(0xff3C84C0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 201,
                              height: 30,
                              decoration: BoxDecoration(
                                color: couleur5,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      "assets/images/SVGs/knife.svg",
                                      height: 30,
                                      width: 30,
                                      color: couleur1,
                                    ),
                                  ),
                                  const Text("Fruit de saison",
                                      style: TextStyle(
                                        color: Color(0xff3C84C0),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/images/SVGs/Down.svg",
                  height: 30,
                  width: 30,
                  color: couleur4,
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                bottom: 0.06 * MediaQuery.of(context).size.height,
              ),
              child: ConstrainedBox(
                constraints:
                    const BoxConstraints.tightFor(width: 250, height: 60),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(couleur4),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                      )),
                  child: Text("Contribute to next week's menu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: bck_color,
                      )),
                  onPressed: () {},
                ),
              )),
        ])));
  }
}
