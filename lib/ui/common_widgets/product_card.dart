import 'package:flutter/material.dart';
import 'package:quikart_1/core/constants.dart';
import 'package:quikart_1/ui/common_widgets/product_hero.dart';

const img = "assets/images/product.png";
const itemname = "Nike Air Max 270 React ENG ";

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double rHeight(double inp) {
      return (height / 852) * inp;
    }

    double width = MediaQuery.of(context).size.width;
    double rWidth(double inp) {
      return (width / 393) * inp;
    }

    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>const HeroScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xff9098B1)),
            borderRadius: BorderRadius.circular(5)),
        height: rHeight(282),
        width: rWidth(165),
        child: Padding(
          padding: EdgeInsets.all(rWidth(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: rHeight(133),
                width: rWidth(133),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                ),
              ),
              const Expanded(
                child: Text(
                  itemname,
                  maxLines: 2,
                ),
              ),
              Image.asset(
                "assets/images/rating.png",
                height: rHeight(12),
                width: rWidth(68),
              ),
              const Spacer(),
              const Text("\$299,43"),
              const Text("\$534,33  24% Off"),
            ],
          ),
        ),
      ),
    );
  }
}
