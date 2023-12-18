import 'package:flutter/material.dart';

const img = "assets/images/pimg.png";

class PromoWidget extends StatelessWidget {
  const PromoWidget({
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

    return Container(
      height: rHeight(206),
      width: rWidth(343),
      
      child: Stack(
        children: [
          Container(
            height: rHeight(206),
            width: rWidth(343),
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(img,),)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:32,left: 25),
            child: Column(
              children: const [
                 Expanded(
                    child: Text("Super Flash Sale\n 50% Off",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ))),
                        
              ],
            ),
          )
        ],
      ),
    );
  }
}

