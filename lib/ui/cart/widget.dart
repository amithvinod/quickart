import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

const img = "assets/images/cart.png";

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

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
      height: rHeight(87),
      width: rWidth(327),
      child: Row(children: [
        Container(
          height: rHeight(87),
          width: rWidth(87),
          padding:const EdgeInsets.all(10),
          margin:const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              image:const DecorationImage(image: AssetImage(img)),
              borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(
          
          width: rWidth(224),
          height: rHeight(87),
          //width: rWidth(240),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
            const Text("TMA-2 Comfort Wireless "),
            const Text("USD 270"),
            Row(
              children: [
                SizedBox(
                  height: rHeight(30),
                  width: rWidth(30),
                  
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:const BorderSide(color: Color.fromRGBO(186, 186, 186, 1)),
                  borderRadius: BorderRadius.circular(10)
                              ),
                    onPressed: (){},child:const Icon(Icons.remove)
                    ),
                ),
                SizedBox(
                  height: rHeight(30),
                  width: rWidth(30),
                  child:const Center(child:  Text("1"))
                  ),
                 SizedBox(
                  height: rHeight(30),
                  width: rWidth(30),
                  
                  child: FloatingActionButton(
                    
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color.fromRGBO(186, 186, 186, 1)),
                  borderRadius: BorderRadius.circular(10)
                              ),
                    onPressed: (){},child:const Icon(Icons.add)
                    ),
                ),
                const Spacer(),
                IconButton(onPressed: (){}, icon:const Icon(Icons.delete_outline,color:Color.fromRGBO(186, 186, 186, 1) ,))
              ],
            )

          ]),
        )
        
      ]),
    );
  }
}
