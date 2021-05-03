import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/routes.dart';
import 'package:flutter_ecommerce_shop/screens/home/home_screen.dart';
import 'package:flutter_ecommerce_shop/screens/profile/profile_screen.dart';
import 'package:flutter_ecommerce_shop/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}
