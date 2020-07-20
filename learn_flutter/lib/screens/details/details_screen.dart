import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learn_flutter/constants.dart';
import 'package:learn_flutter/models/Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0, // Hide separator line on navigation
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          )
        ],
      ),
    );
  }
}
