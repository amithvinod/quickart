import 'package:flutter/material.dart';

import '../../core/colors.dart';

class GradientBg extends StatelessWidget {
  const GradientBg({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration:const BoxDecoration(
          gradient: LinearGradient(
              colors: bggradientColors,
              begin: Alignment.bottomLeft,
              end: Alignment.topLeft)),
      child: child,
    );
  }
}
