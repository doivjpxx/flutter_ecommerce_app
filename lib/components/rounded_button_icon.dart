import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedBtnIcon extends StatelessWidget {
  const RoundedBtnIcon({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        onPressed: onPressed,
        child: Icon(icon),
      ),
    );
  }
}
