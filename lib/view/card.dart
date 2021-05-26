import 'package:flutter/material.dart';
import 'package:uber_clone/model/colors.dart';
import 'package:uber_clone/model/textstyles.dart';

enum CardType { xs, small, medium, large, xl }

class CardPanel extends StatelessWidget {
  final String title;
  final String time;
  final Image image;
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
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: SizedBox(
            height: 120,
            child: Stack(children: [
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: color == Colors.black ? h1White : h1Black,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 10,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    time,
                    style: color == Colors.black
                        ? labelWhiteRegularStyle
                        : labelGreyRegularStyle,
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                right: -20,
                child: Container(
                    margin: EdgeInsets.only(), height: 100, child: image),
              ),
            ]),
          )
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Container(
          //       alignment: Alignment.topLeft,
          //       child: Text(
          //         title,
          //         style: color == Colors.black ? h1White : h1Black,
          //       ),
          //     ),
          //     Container(
          //       alignment: Alignment.topLeft,
          //       child: Text(
          //         time,
          //         style: color == Colors.black
          //             ? labelWhiteRegularStyle
          //             : labelGreyRegularStyle,
          //       ),
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //         Container(
          //             transformAlignment: Alignment.bottomRight,
          //             width: 40,
          //             alignment: Alignment.bottomRight,
          //             child: image),
          //       ],
          //     )
          //   ],
          // ),
          ),
    );
  }
}
