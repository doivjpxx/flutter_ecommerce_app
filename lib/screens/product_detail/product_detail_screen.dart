import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/models/product.model.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

import 'components/body.dart';
import 'components/custom_appbar.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = "/product-detail";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF4F6F9),
      appBar: CustomAppBar(context: context, rating: args.product.rating),
      body: Body(
        product: args.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
