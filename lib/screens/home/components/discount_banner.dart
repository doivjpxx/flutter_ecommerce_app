import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15)),
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      decoration: BoxDecoration(
          color: Color(0xFF4A3298), borderRadius: BorderRadius.circular(20)),
      child: Text.rich(TextSpan(
          text: "A Summer Surprise\n",
          style: TextStyle(color: Colors.white),
          children: <TextSpan>[
            TextSpan(
                text: "Cashbash 20%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))
          ])),
    );
  }
}
