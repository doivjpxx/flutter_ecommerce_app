import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/custom_suffix_icon.dart';

TextFormField buildTextFormField(
    {required String labelText,
    TextInputType keyboardType = TextInputType.text,
    required FormFieldValidator validator,
    required Function(String) onChanged,
    required Function(dynamic) onSaved,
    required String hintText,
    required String suffixIcon}) {
  return TextFormField(
      obscureText: keyboardType == TextInputType.visiblePassword ? true : false,
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
