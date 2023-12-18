import 'package:flutter/material.dart';
import 'package:quikart_1/core/colors.dart';

class RedButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const RedButtonWidget({super.key, required this.label,required this.onPressed});

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
      width: rWidth(166),
      height: rHeight(54),
      child: OutlinedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
            side: const BorderSide(color: red),
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        child: Text(label,
            style: const TextStyle(
              color: red,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )),
      ),
    );
  }
}
