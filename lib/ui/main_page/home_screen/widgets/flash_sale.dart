
import 'package:flutter/material.dart';

import 'package:quikart_1/core/constants.dart';
import 'package:quikart_1/ui/common_widgets/product_card.dart';

class FlashSaleHome extends StatelessWidget {
  const FlashSaleHome({super.key});

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    double rHeight(double inp) {
      return (height / 852) * inp;
    }
    return LimitedBox(
      maxHeight: rHeight(300), 
      child: ListView.separated(
        itemCount: 5,
        separatorBuilder:(ctx,index)=> SizedBox(width: 20,),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx,index)=>ProductCard(),
      ),
    );
  }
}