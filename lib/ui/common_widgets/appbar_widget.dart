import 'package:flutter/material.dart';

import 'package:quikart_1/core/colors.dart';

class AppBarWidget extends StatelessWidget {
  final String heading;

  const AppBarWidget({super.key,required this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: buttonColor,
      child: 
        
          Padding(
            padding: const EdgeInsets.only(top:45.0),
            child: Center(
              child: GradientText(
                
                heading,
                gradient:const LinearGradient(colors: [Color(0xffB10000),Color(0xff000354)]),
                style:const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  
                ),
              ),
            ),
          ),
        
      
    );
  }
}



class GradientText extends StatelessWidget {
  const GradientText(
    
    this.text, {
      super.key,
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}