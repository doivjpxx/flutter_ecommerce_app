import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/components/social_box.dart';
import 'package:flutter_ecommerce_shop/size_config.dart';

class SocialFormGroup extends StatelessWidget {
  const SocialFormGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialBox(
              icon: "assets/icons/google-icon.svg",
              onPressed: () {},
            ),
            SocialBox(
              icon: "assets/icons/facebook-2.svg",
              onPressed: () {},
            ),
            SocialBox(
              icon: "assets/icons/twitter.svg",
              onPressed: () {},
            )
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Text(
          "By continuing your confirm that you agree \n with our Term and Condition",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
