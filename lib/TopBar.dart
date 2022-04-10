import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'costants.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        IconButton(
          color: couleur1,
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/images/SVGs/profile.svg",
            height: 60,
            width: 60,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
        ),
        Row(
          children: [
            Text(
              "7",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: couleur4,
                  fontFamily: "Montserrat"),
            ),
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
}
