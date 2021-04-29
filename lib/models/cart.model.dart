import 'package:flutter_ecommerce_shop/models/product.model.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({required this.product, required this.numOfItems});
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItems: 2),
  Cart(product: demoProducts[1], numOfItems: 1),
  Cart(product: demoProducts[2], numOfItems: 1),
];
