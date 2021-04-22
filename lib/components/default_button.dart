import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
          onPressed: onPressed,
          child: Text(text),
          style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              textStyle:
                  TextStyle(fontSize: getProportionateScreenHeight(18)))),
    );
  }
}
