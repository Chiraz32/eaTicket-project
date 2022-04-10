import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Calendar Page')),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/01 align center.png'),
              Row(children: [
                const Text(
                  "7",
                  style: TextStyle(
                    fontFamily: "Monsterrat",
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Image.asset("assets/images/receipt 2 ")
              ])
            ],
          )
        ]));
  }
}
