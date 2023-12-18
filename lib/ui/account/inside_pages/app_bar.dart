import 'package:flutter/material.dart';

import 'package:quikart_1/core/colors.dart';
import 'package:quikart_1/ui/common_widgets/appbar_widget.dart';

class AccAppBarWidget extends StatelessWidget {
  final String heading;

  const AccAppBarWidget({super.key,required this.heading});

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
      color: buttonColor,
      
      child: 
        
          Padding(
            padding: const EdgeInsets.only(top:45.0),
            child: Row(
              
              children: [
                
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon:const Icon(Icons.arrow_back_ios)
                ),
                SizedBox(width:0.25*width),
                Center(
                  child: GradientText(
                    
                    heading,
                    style:const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                    gradient:const LinearGradient(colors: [Color(0xffB10000),Color(0xff000354)]), 
                  ),
                ),
              ],
            ),
          ),
        
      
    );
  }
}