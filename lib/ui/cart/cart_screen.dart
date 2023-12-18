import 'package:flutter/material.dart';
import 'package:quikart_1/core/constants.dart';
import 'package:quikart_1/ui/cart/widget.dart';
import 'package:quikart_1/ui/common_widgets/appbar_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(119),
        child: AppBarWidget(heading: "Shopping Cart"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.only(top: 30, left: 32, right: 32),
              child: ListView.separated(
                itemBuilder: (ctx, index) => const CartItemWidget(),
                separatorBuilder: (ctx, index) => SizedBox(
                  height: rHeight(30),
                ),
                itemCount: 5,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: rWidth(330),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total 2 Items",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(0, 0, 0, 1)
                          )),
                      Text("USD 295",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        
                            backgroundColor: const Color.fromRGBO(10, 207, 131, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                                
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Proceed to checkout"),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
