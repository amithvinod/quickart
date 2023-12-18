import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class SavedCardsContainer extends StatelessWidget {
  final int index;
   SavedCardsContainer({super.key, required this.index});
  final _cardnum = [
    "**** 4187","**** 9387"
  ];

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
        height: rHeight(72),
        width: rWidth(342),
        decoration: BoxDecoration(
            border: Border.all(color: textColor),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                _cardnum[index],
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const Icon(Icons.credit_card),
              const Spacer(),
               IconButton(onPressed:(){}, icon: const Icon(Icons.arrow_forward_ios))
            ],
          ),
        ));
  }
}
