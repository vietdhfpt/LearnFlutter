import 'package:flutter/material.dart';
import 'package:learn_flutter/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  const HotelCarousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Exclusive Hotels",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("See All");
                },
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: hotels.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.red,
                  child: Container(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
