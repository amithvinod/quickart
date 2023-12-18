import 'package:flutter/material.dart';

class RecommProductWidget extends StatelessWidget {
  const RecommProductWidget({
    super.key,
  });

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
      padding: const EdgeInsets.only(top: 10.0),
      child: LimitedBox(
        maxHeight: rHeight(230),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/image 51.png",
              width: rWidth(343),
              height: rHeight(206),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48, bottom: 48, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Recomended\nProduct",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text("We recommend the best for you",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
