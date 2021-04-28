import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/models/product.model.dart';
import 'package:flutter_ecommerce_shop/screens/product_detail/components/product_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ProductImage(product: product);
  }
}
