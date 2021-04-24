import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/social_form_group.dart';
import 'package:flutter_ecommerce_shop/screens/signup/components/signup_form.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

import '../../../constants.dart';

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
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.09,
              ),
              SignupForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.09,
              ),
              SocialFormGroup()
            ],
          ),
        ),
      ),
    );
  }
}
