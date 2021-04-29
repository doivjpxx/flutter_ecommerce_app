import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/rounded_button_icon.dart';
import 'package:flutter_ecommerce_shop/models/product.model.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorsDot extends StatelessWidget {
  const ColorsDot({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.images.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedBtnIcon(icon: Icons.remove, onPressed: () {}),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          RoundedBtnIcon(icon: Icons.add, onPressed: () {}),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent),
          shape: BoxShape.circle),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
