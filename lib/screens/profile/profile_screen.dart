import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/cutom_bottom_bar.dart';
import 'package:flutter_ecommerce_shop/constants.dart';
import 'package:flutter_ecommerce_shop/enums.dart';
import 'package:flutter_ecommerce_shop/screens/profile/components/body.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
