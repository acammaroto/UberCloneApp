import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
// TODO: Add an image as a background

  final String title;
  final String subtitle;
  final String image; //add Image or Image path -

  const EventCard({
    Key key,
    this.title,
    this.subtitle,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(this.title),
          Text(this.subtitle),
        ],
      ),
    );
  }
}
