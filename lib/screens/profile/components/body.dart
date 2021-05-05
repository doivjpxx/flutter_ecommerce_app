import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/constants.dart';
import 'package:flutter_ecommerce_shop/screens/profile/components/profile_avatar.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProfileAvatar(),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          title: "My account",
          onPressed: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Bell.svg",
          title: "Notification",
          onPressed: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          title: "Settings",
          onPressed: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          title: "Help center",
          onPressed: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Log out.svg",
          title: "Log out",
          onPressed: () {},
        )
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  final String title;
  final String icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: const EdgeInsets.all(20),
          color: Color(0xFFF5F6F9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: onPressed,
          child: Row(
            children: <Widget>[
              SvgPicture.asset(
                icon,
                width: 22,
                color: kPrimaryColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}
