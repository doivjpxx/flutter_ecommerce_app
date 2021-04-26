import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/rounded_button_icon.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

import 'components/body.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = "/product-detail";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF4F6F9),
      appBar: CustomAppBar(context),
      body: Body(),
    );
  }
}

class CustomAppBar extends PreferredSize {
  CustomAppBar(BuildContext context)
      : super(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Row(
                  children: [
                    RoundedBtnIcon(
                        icon: Icons.arrow_back_ios,
                        onPressed: () => Navigator.pop(context))
                  ],
                ),
              ),
            ),
            preferredSize: Size.fromHeight(AppBar().preferredSize.height));
}
