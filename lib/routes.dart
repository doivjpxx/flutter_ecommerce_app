import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_ecommerce_shop/screens/signin/signin_screen.dart';
import 'package:flutter_ecommerce_shop/screens/splash/splash_screen.dart';

// using nameroute to routing page
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SiginInScreen.routeName: (context) => SiginInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
