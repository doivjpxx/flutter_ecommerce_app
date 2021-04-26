import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

import 'home_header.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader()
          ],
        ),
      ),
    );
  }
}
