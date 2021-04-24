import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/custom_suffix_icon.dart';
import 'package:flutter_ecommerce_shop/components/default_button.dart';
import 'package:flutter_ecommerce_shop/components/form_error.dart';
import 'package:flutter_ecommerce_shop/screens/complete_profile/complete_profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();

  List<String> errors = [];

  String email = '';
  String password = '';
  String confirmedPassword = '';

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
                  return "";
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  errors.add(kInvalidEmailError);
                  return "";
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
                password = value;

                return null;
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kPassNullError)) {
                  setState(() {
                    errors.add(kPassNullError);
                  });
                  return "";
                } else if (value.length < 8 &&
                    !errors.contains(kShortPassError)) {
                  setState(() {
                    errors.add(kShortPassError);
                  });
                  return "";
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
              hintText: "Enter your password",
              suffixIcon: "assets/icons/Lock.svg"),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildTextFormField(
              labelText: "Confirm Password",
              onSaved: (value) => confirmedPassword = value,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  setState(() {
                    errors.remove(kPassNullError);
                  });
                } else if (password == confirmedPassword) {
                  setState(() {
                    errors.remove(kPassNullError);
                  });
                }
                confirmedPassword = value;
                return null;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  setState(() {
                    errors.add(kPassNullError);
                  });
                  return "";
                } else if (value != password) {
                  setState(() {
                    errors.add(kMatchPassError);
                  });
                  return "";
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
              hintText: "Re-enter your password",
              suffixIcon: "assets/icons/Lock.svg"),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
              text: "Continue",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
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
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon: suffixIcon,
            )));
  }
}
