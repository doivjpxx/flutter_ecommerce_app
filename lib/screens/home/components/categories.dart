import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  List<Map<String, dynamic>> categories = [
    {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
    {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
    {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
    {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
    {"icon": "assets/icons/Discover.svg", "text": "More"},
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
            categories.length,
            (index) => CategoryCard(
                  category: categories[index],
                  onPressed: () {},
                ))
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.category, required this.onPressed})
      : super(key: key);

  final Map<String, dynamic> category;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(
                  getProportionateScreenWidth(15),
                ),
                decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(category["icon"]),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              category["text"],
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
