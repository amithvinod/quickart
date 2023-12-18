import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ImageNotification extends StatelessWidget {
  final String img;
  const ImageNotification({super.key, required this.img});
  
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

    return Padding(
      padding: const EdgeInsets.only(top:10.0,left:10,right:10.0),
      child: SizedBox(
        height: rHeight(181),
        width: rWidth(355),
        child: Image.asset(img),
      ),
    );
  }
}
