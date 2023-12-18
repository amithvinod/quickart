import 'package:flutter/material.dart';
import 'package:quikart_1/ui/account/account_screen.dart';
import 'package:quikart_1/ui/account/inside_pages/address/address.dart';

class ButtonWidget2 extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  const ButtonWidget2(
      {super.key,
      required this.icon,
      required this.label,
      required this.onPressed});

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
            side: const BorderSide(color: Color(0xff000354)),
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: rWidth(4),
            ),
            Text(label,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
      ),
    );
  }
}
