import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/screens/splash/components/body.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
