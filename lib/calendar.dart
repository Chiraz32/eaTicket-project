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
          CarouselSlider(
              options: CarouselOptions(
                height: 520,
                scrollDirection: Axis.vertical,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
              ),
              items: [
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
                  ],
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.1),
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
                                      MediaQuery.of(context).size.width * 0.03),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 250,
                  height: 69,
                  decoration: BoxDecoration(
                      color: couleur4, borderRadius: BorderRadius.circular(40)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(12.5),
                      child: Text(
                        "Contribute to next week's menu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ))
            ],
          )
        ])));
  }
}
