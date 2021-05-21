import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:uber_clone/model/colors.dart';
import 'package:uber_clone/view/panel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Stack(
          children: <Widget>[
            Center(
              child: Text("This is the Widget behind the sliding panel"),
            ),
            SlidingUpPanel(
              borderRadius: BorderRadius.circular(35),
              minHeight: MediaQuery.of(context).size.height / 3,
              maxHeight: MediaQuery.of(context).size.height - 80,
              backdropColor: darkGrey,
              backdropEnabled: true,
              panel: SafeArea(child: Panel()),
            )
          ],
        ));
  }
}
