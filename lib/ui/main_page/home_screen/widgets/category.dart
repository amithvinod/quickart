import 'package:flutter/material.dart';

import 'package:quikart_1/core/constants.dart';

const iconList = [
  "assets/icons/dress.png",
  "assets/icons/man_bag.png",
  "assets/icons/shirt.png",
  "assets/icons/shoe.png",
  "assets/icons/women_bag.png"
];
const itemList = ["Dress","Man Work","Shirt","Shoe","Women Bag"];

class CategoryHome extends StatelessWidget {
  const CategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double rHeight(double inp) {
      return (height / 852) * inp;
    }

    return LimitedBox(
      maxHeight: rHeight(165),
      child: ListView.separated(
        itemCount: 5,
        separatorBuilder: (ctx, index) => SizedBox(
          width: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => TileCategoryHome(
          item: itemList[index],
          icon: iconList[index],
        ),
      ),
    );
  }
}



class TileCategoryHome extends StatelessWidget {
  final String icon;
  final String item;
  const TileCategoryHome({super.key, required this.item, required this.icon});

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

    return Container(
      width: rWidth(70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                shape:const CircleBorder(), fixedSize:const Size(70, 70)),
            child: Center(child: Image.asset(icon)),
          ),
          Text(item,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ))
        ],
      ),
    );
  }
}
