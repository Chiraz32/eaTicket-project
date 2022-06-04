import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'costants.dart';

class RatingWidget extends StatefulWidget {
  late int check;

  RatingWidget();

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  double finalRating = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.49,
      decoration: BoxDecoration(
          color: couleur2_superlightOpacity,
          borderRadius: BorderRadius.circular(15)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          children: [
            const Text(
              '    How was \n    today\'s \n    Menu?',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Image.asset(
              'assets/images/thoughtful-chef-3668326-3668326%400 1.png',
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ],
        ),
        RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            maxRating: 5,
            allowHalfRating: false,
            itemCount: 5,
            glowColor: couleur4,
            itemPadding: EdgeInsets.symmetric(horizontal: 2),
            itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: couleur4,
                ),
            onRatingUpdate: (rating) {
              finalRating = rating;
            }),
        ElevatedButton(
            onPressed: () {
              widget.check++;
              widget.check <= 1
                  ? print(finalRating)
                  : print('already submitted!');
              //widget.flip = true;
            },
            child: const Text('Submit'),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(5),
              backgroundColor: MaterialStateProperty.all<Color>(couleur4),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        )
      ]),
    );
  }
}
