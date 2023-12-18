import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class AddressBar extends StatelessWidget {
  final int index ;
  AddressBar({super.key, required this.index});
  final _address = [
    "801103,  Room no 220, Aryabhatta \nhostel, IIT Patna, Bihar.",
    "801103,  Room no 69, Kalam hostel\n, IIT Patna, Bihar."
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _address[index],
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: rHeight(24),
                  width: rWidth(52),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("selected",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ))),
                ),
                SizedBox(
                  height: rHeight(24),
                  width: rWidth(52),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("Edit",
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                          ))),
                ),
              ],
            )
          ],
        ));
    
  }
}
