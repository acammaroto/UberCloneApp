import 'package:flutter/material.dart';
import 'package:uber_clone/model/colors.dart';
import 'package:uber_clone/model/textstyles.dart';
import 'package:uber_clone/view/card.dart';
import 'package:uber_clone/view/event_card.dart';

class Panel extends StatelessWidget {
  final deliveryTruckImage =
      Image(image: AssetImage("images/delivery.png"), fit: BoxFit.cover);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/taxi.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello user,",
                              style: labelGreyRegularStyle,
                            ),
                            Text(
                              "Where to go?",
                              style: h1Black,
                            ),
                          ],
                        ),
                      ),
                      Text("Map"),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CardPanel(
                image: deliveryTruckImage,
                time: '20 mins',
                title: 'Eats',
                type: CardType.small,
                color: white,
              ),
              Expanded(
                flex: 0,
                child: SizedBox(width: 5),
              ),
              CardPanel(
                image: deliveryTruckImage,
                time: '20 mins',
                title: 'Market',
                type: CardType.small,
                color: white,
              ),
              Expanded(
                flex: 0,
                child: SizedBox(width: 5),
              ),
              CardPanel(
                image: deliveryTruckImage,
                time: '20 mins',
                title: 'Delivery',
                type: CardType.small,
                color: white,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CardPanel(
                image: deliveryTruckImage,
                time: '16 mins',
                title: 'Home',
                type: CardType.medium,
                color: white,
              ),
              Expanded(
                flex: 0,
                child: SizedBox(width: 5),
              ),
              CardPanel(
                image: deliveryTruckImage,
                time: '',
                title: 'Health',
                type: CardType.small,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              CardPanel(
                image: deliveryTruckImage,
                time: '200 m',
                title: 'Scooter',
                type: CardType.small,
                color: white,
              ),
              Expanded(
                flex: 0,
                child: SizedBox(width: 5),
              ),
              CardPanel(
                image: deliveryTruckImage,
                time: '330m',
                title: 'Bike',
                type: CardType.small,
                color: white,
              ),
              Expanded(
                flex: 0,
                child: SizedBox(width: 5),
              ),
              CardPanel(
                image: deliveryTruckImage,
                time: '25 min',
                title: 'Work',
                type: CardType.small,
                color: white,
              ),
            ],
          ),
          SizedBox(height: 15),
          Text("Best events and places nearly", style: h1Black),
          SizedBox(height: 5),
          Expanded(
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                EventCard(
                    title: "Cat cofee opening",
                    subtitle: "An amazing subtitle",
                    image: ""),
                SizedBox(
                  width: 15,
                ),
                EventCard(
                    title: "Cat cofee opening",
                    subtitle: "New Tarantino moview",
                    image: ""),
                SizedBox(
                  width: 15,
                ),
                EventCard(
                    title: "Cat cofee opening",
                    subtitle: "New Tarantino moview",
                    image: ""),
                SizedBox(
                  width: 15,
                ),
                EventCard(
                    title: "Cat cofee opening",
                    subtitle: "New Tarantino moview",
                    image: ""),
                SizedBox(
                  width: 15,
                ),
                EventCard(
                    title: "Cat cofee opening",
                    subtitle: "New Tarantino moview",
                    image: ""),
              ],
            ),
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
