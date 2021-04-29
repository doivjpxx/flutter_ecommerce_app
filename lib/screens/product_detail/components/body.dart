import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/default_button.dart';
import 'package:flutter_ecommerce_shop/models/product.model.dart';
import 'package:flutter_ecommerce_shop/screens/product_detail/components/product_description.dart';
import 'package:flutter_ecommerce_shop/screens/product_detail/components/product_image.dart';
import 'package:flutter_ecommerce_shop/screens/product_detail/components/top_rounded_container.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

import 'colors_dot.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImage(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                onPressed: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorsDot(product: product),
                    TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenWidth(15),
                              bottom: getProportionateScreenWidth(40),
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15),
                          child: DefaultButton(
                            text: "Add to cart",
                            onPressed: () {},
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
