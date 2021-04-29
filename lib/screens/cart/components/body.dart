import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/constants.dart';
import 'package:flutter_ecommerce_shop/models/cart.model.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartItemCard(cart: demoCarts[0]),
      ],
    );
  }
}

class CartItemCard extends StatelessWidget {
  const CartItemCard({Key? key, required this.cart}) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenHeight(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              cart.product.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(
                      text: " x${cart.numOfItems}",
                      style: TextStyle(color: kTextColor))
                ]))
          ],
        )
      ],
    );
  }
}
