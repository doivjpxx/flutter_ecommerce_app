import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialBox extends StatelessWidget {
  const SocialBox({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final String icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
