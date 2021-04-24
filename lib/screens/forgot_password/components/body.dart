import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/custom_suffix_icon.dart';
import 'package:flutter_ecommerce_shop/components/default_button.dart';
import 'package:flutter_ecommerce_shop/components/form_error.dart';
import 'package:flutter_ecommerce_shop/components/no_account_text.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return your password",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildTextFormField(
              labelText: "Email",
              onSaved: (value) => email = value,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  errors.remove(kInvalidEmailError);
                }
                return null;
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  errors.add(kInvalidEmailError);
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              hintText: "Enter your email",
              suffixIcon: "assets/icons/Mail.svg"),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          DefaultButton(
              text: "Continue",
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              }),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          NoAccountText()
        ],
      ),
    );
  }

  TextFormField buildTextFormField(
      {required String labelText,
      TextInputType keyboardType = TextInputType.text,
      required FormFieldValidator validator,
      required Function(String) onChanged,
      required Function(dynamic) onSaved,
      required String hintText,
      required String suffixIcon}) {
    return TextFormField(
        obscureText:
            keyboardType == TextInputType.visiblePassword ? true : false,
        validator: validator,
        onChanged: onChanged,
        onSaved: onSaved,
        decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            suffixIcon: CustomSuffixIcon(
              svgIcon: suffixIcon,
            )));
  }
}
