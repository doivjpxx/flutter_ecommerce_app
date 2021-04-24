import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/screens/signup/components/body.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: Body(),
    );
  }
}
