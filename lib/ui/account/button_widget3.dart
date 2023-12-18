import 'package:flutter/material.dart';

class ButtonWidget3 extends StatelessWidget {
  
  final String label;
  const ButtonWidget3({super.key, required this.label});
  
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
      width: rWidth(314),
      height: rHeight(54),
      child: OutlinedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            side: const BorderSide(color: Color(0xff000354)),
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            
            Text(label,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                )),
                const Icon(Icons.arrow_forward_ios,color: Colors.black,),
          ],
        ),
      ),
    );
  }
}