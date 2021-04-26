import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_shop/models/product.model.dart';
import 'package:flutter_ecommerce_shop/screens/home/components/section_title.dart';
import 'package:flutter_ecommerce_shop/screens/product_detail/product_detail_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductsPopular extends StatelessWidget {
  const ProductsPopular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SectionTitle(title: "Product popular", onPressed: () {}),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                    title: demoProducts[index].title,
                    image: demoProducts[index].images[0],
                    price: demoProducts[index].price,
                    isFavorite: demoProducts[index].isFavourite,
                    onPressed: () {
                      Navigator.pushNamed(
                          context, ProductDetailScreen.routeName);
                    },
                    onFavorite: () {}),
              ),
              SizedBox(width: getProportionateScreenHeight(20)),
            ],
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.price,
      required this.onPressed,
      required this.isFavorite,
      required this.onFavorite})
      : super(key: key);

  final String title;
  final String image;
  final double price;
  final bool isFavorite;
  final GestureTapCallback onPressed;
  final Function() onFavorite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: getProportionateScreenWidth(140),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(image),
                ),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$$price",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: onFavorite,
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      width: getProportionateScreenWidth(28),
                      height: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                          color: isFavorite
                              ? kPrimaryColor.withOpacity(0.1)
                              : kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color:
                            isFavorite ? Color(0xFFFF4848) : Color(0xFFD8DEE4),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
