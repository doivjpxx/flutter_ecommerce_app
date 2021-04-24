import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete-profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Complete Profile")),
      body: Body(),
    );
  }
}
