import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/screens/signin/components/body.dart';

class SiginInScreen extends StatelessWidget {
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
