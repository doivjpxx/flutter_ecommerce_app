import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_ecommerce_shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_ecommerce_shop/screens/login_success/login_success_screen.dart';
import 'package:flutter_ecommerce_shop/screens/otp/otp_screen.dart';
import 'package:flutter_ecommerce_shop/screens/signin/signin_screen.dart';
import 'package:flutter_ecommerce_shop/screens/signup/signup_screen.dart';
import 'package:flutter_ecommerce_shop/screens/splash/splash_screen.dart';

// using nameroute to routing page
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen()
};
