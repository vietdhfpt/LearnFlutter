import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCouter extends StatefulWidget {
  @override
  _CartCouterState createState() => _CartCouterState();
}

class _CartCouterState extends State<CartCouter> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (number > 1) {
              setState(() {
                number--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            number.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              if (number < 20) {
                number++;
              }
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
        width: 40,
        height: 36,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          onPressed: press,
          child: Icon(icon),
        ));
  }
}
