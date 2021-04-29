import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/screens/cart/components/body.dart';

import '../../size_config.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: <Widget>[
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "4 items",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
