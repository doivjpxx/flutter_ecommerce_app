import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/screens/cart/components/body.dart';

import '../../size_config.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
