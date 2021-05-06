import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/cutom_bottom_bar.dart';
import 'package:flutter_ecommerce_shop/enums.dart';

import '../../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
