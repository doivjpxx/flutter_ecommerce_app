import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/default_button.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login-success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text("Login Success"),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          Text(
            "Login Success",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Spacer(),
          SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(text: "Back to home", onPressed: () {})),
          Spacer(),
        ],
      ),
    );
  }
}
