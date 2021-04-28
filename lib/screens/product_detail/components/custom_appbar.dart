import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/rounded_button_icon.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class CustomAppBar extends PreferredSize {
  final double rating;

  CustomAppBar({required BuildContext context, required this.rating})
      : super(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedBtnIcon(
                        icon: Icons.arrow_back_ios,
                        onPressed: () => Navigator.pop(context)),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14)),
                      child: Row(
                        children: [
                          Text(
                            rating.toString(),
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset("assets/icons/Star Icon.svg")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            preferredSize: Size.fromHeight(AppBar().preferredSize.height));
}
