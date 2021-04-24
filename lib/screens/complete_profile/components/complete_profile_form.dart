import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/default_button.dart';
import 'package:flutter_ecommerce_shop/utils/build_textformfield.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();

  List<String> _errors = [];

  String firstName = '';
  String lastName = '';
  String phoneNumber = '';
  String address = '';

  void addError({required String error}) {
    if (!_errors.contains(error))
      setState(() {
        _errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (_errors.contains(error))
      setState(() {
        _errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildTextFormField(
              onSaved: (newValue) => firstName = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kNamelNullError);
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty) {
                  addError(error: kNamelNullError);
                  return "";
                }
                return null;
              },
              labelText: "First Name",
              hintText: "Enter your first name",
              suffixIcon: "assets/icons/User.svg"),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildTextFormField(
              onChanged: (value) {},
              onSaved: (newValue) => lastName = newValue,
              validator: (value) {},
              labelText: "Last Name",
              hintText: "Enter your last name",
              suffixIcon: "assets/icons/User.svg"),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildTextFormField(
              onSaved: (newValue) => phoneNumber = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kPhoneNumberNullError);
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty) {
                  addError(error: kPhoneNumberNullError);
                  return "";
                }
                return null;
              },
              keyboardType: TextInputType.phone,
              labelText: "Phone Number",
              hintText: "Enter your phone number",
              suffixIcon: "assets/icons/Phone.svg"),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildTextFormField(
              onSaved: (newValue) => address = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kAddressNullError);
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty) {
                  addError(error: kAddressNullError);
                  return "";
                }
                return null;
              },
              labelText: "Address",
              hintText: "Enter your local address",
              suffixIcon: "assets/icons/Location point.svg"),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
              text: "Continue",
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              })
        ],
      ),
    );
  }
}
