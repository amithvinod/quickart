

import 'package:flutter/material.dart';
import 'package:quikart_1/core/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

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

    return SizedBox(
      height: rHeight(40),
      width: rWidth(350),
      child: TextFormField(
                        
                        
                        textInputAction: TextInputAction.done,
                        
                        decoration: InputDecoration(
                          contentPadding:const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon:  IconButton(icon:const Icon(Icons.mic),onPressed: () {
                              
                            },),
                            hintText: "Search Products",
                            hintStyle:const TextStyle(fontWeight: FontWeight.bold,fontFamily: "Poppins"),
                            border: OutlineInputBorder(
      
                              
                                borderRadius:
                                    BorderRadius.circular((rHeight(20))))),
                      ),
                      
    )
    ;
  }
}