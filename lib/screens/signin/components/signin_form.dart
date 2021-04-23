import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/custom_suffix_icon.dart';
import 'package:flutter_ecommerce_shop/components/default_button.dart';
import 'package:flutter_ecommerce_shop/components/form_error.dart';
import 'package:flutter_ecommerce_shop/screens/forgot_password/forgot_password_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String email = '';
  String password = '';
  bool? rememberMe = false;

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
            height: getProportionateScreenHeight(20),
          ),
          buildTextFormField(
              labelText: "Password",
              onSaved: (value) => password = value,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kPassNullError)) {
                  setState(() {
                    errors.remove(kPassNullError);
                  });
                } else if (value.length >= 8 &&
                    errors.contains(kShortPassError)) {
                  setState(() {
                    errors.remove(kShortPassError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kPassNullError)) {
                  setState(() {
                    errors.add(kPassNullError);
                  });
                } else if (value.length < 8 &&
                    !errors.contains(kShortPassError)) {
                  setState(() {
                    errors.add(kShortPassError);
                  });
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
              hintText: "Enter your password",
              suffixIcon: "assets/icons/Lock.svg"),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                  value: rememberMe,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: Text(
                  "Forgot password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          FormError(errors: errors),
          DefaultButton(
              text: "Continue",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                }
              })
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
