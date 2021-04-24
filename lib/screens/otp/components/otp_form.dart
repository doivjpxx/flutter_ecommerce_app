import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/default_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OTPForm extends StatefulWidget {
  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  FocusNode _pin2FocusNode = FocusNode();
  FocusNode _pin3FocusNode = FocusNode();
  FocusNode _pin4FocusNode = FocusNode();

  @override
  void dispose() {
    _pin2FocusNode.dispose();
    _pin3FocusNode.dispose();
    _pin4FocusNode.dispose();
    super.dispose();
  }

  void _nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  onChanged: (value) {
                    _nextField(value: value, focusNode: _pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: _pin2FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  onChanged: (value) {
                    _nextField(value: value, focusNode: _pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: _pin3FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  onChanged: (value) {
                    _nextField(value: value, focusNode: _pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: _pin4FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.15,
          ),
          DefaultButton(text: "Continue", onPressed: () {})
        ],
      ),
    );
  }
}
