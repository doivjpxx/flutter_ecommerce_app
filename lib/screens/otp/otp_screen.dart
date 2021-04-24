import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'components/otp_form.dart';

class OTPScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text(
                "We sent your code to + 84 908 xxx",
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              OTPForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              Text(
                "Reset OTP Code",
                style: TextStyle(decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("This code will expired in "),
        // Animation part is in here:
        TweenAnimationBuilder<double>(
            tween: Tween(begin: 30.0, end: 0),
            duration: Duration(seconds: 30),
            builder: (context, value, child) => Text(
                  "00:${value.toInt()}",
                  style: TextStyle(color: kPrimaryColor),
                )),
      ],
    );
  }
}
