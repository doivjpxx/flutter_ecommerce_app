import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/no_account_text.dart';
import 'package:flutter_ecommerce_shop/components/social_form_group.dart';
import 'package:flutter_ecommerce_shop/screens/signin/components/signin_form.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SignForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SocialFormGroup(),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              NoAccountText()
            ],
          ),
        ),
      ),
    );
  }
}
