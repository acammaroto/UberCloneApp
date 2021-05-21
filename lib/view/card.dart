import 'package:flutter/material.dart';
import 'package:uber_clone/model/colors.dart';
import 'package:uber_clone/model/textstyles.dart';

enum CardType { xs, small, medium, large, xl }

class CardPanel extends StatelessWidget {
  final String title;
  final String time;
  final String image;
  final Color color;

  final CardType type;

  const CardPanel(
      {Key key,
      @required this.title,
      @required this.time,
      @required this.image,
      @required this.type,
      this.color = Colors.white70})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: type.index,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style: color == Colors.black ? h1White : h1Black,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                time,
                style: color == Colors.black
                    ? labelWhiteRegularStyle
                    : labelGreyRegularStyle,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                image,
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
