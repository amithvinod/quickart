import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quikart_1/core/colors.dart';
import 'package:quikart_1/core/constants.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

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
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SizedBox(
          width: rWidth(10),
        ),
        SizedBox(
          height: rHeight(53),
          width: rWidth(150),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: red),
            child: const Text("Add to cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ),
        SizedBox(
          height: rHeight(53),
          width: rWidth(150),
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return  AlertDialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.green,
                        title: const Center(
                          child: Text("Order Placed!",
                          style:TextStyle(color: Colors.white),),
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(0, 3, 84, 1)),
              child: const Text("Buy Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ))),
        )
      ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 70, left: 36, right: 36, bottom: 25),
                  height: rHeight(512),
                  color: Color.fromRGBO(236, 236, 236, 0.498),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/hero.png"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: rHeight(50),
                              width: rWidth(50),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/hero1.png")),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              width: rWidth(12),
                            ),
                            Container(
                              height: rHeight(50),
                              width: rWidth(50),
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/hero2.png"),
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              width: rWidth(12),
                            ),
                            Container(
                              height: rHeight(50),
                              width: rWidth(50),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/hero3.png")),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              width: rWidth(12),
                            ),
                            Container(
                              height: rHeight(50),
                              width: rWidth(50),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/hero4.png")),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                            )
                          ],
                        )
                      ]),
                ),
                SafeArea(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Sony WHMSH69"),
                      Text("\$22.00",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ))
                    ],
                  ),
                  kWidth,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: rHeight(24),
                            width: rWidth(59),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/icons/Star.png",
                                  height: rHeight(12),
                                  width: rWidth(12),
                                ),
                                const Text("4.8",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                          ),
                          const Text("125+ Review",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Row(
                        children: const [
                          Text("56% off",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              )),
                          Text("2999",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(18, 15, 15, 0.5)))
                        ],
                      )
                    ],
                  ),
                  kWidth,
                  SizedBox(
                    height: rHeight(118),
                    width: rWidth(335),
                    child: const Expanded(
                        child: Text(
                            "Loda Lassan dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ))),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    width: rWidth(335),
                    height: rHeight(143),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0x7fececec)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/Star.png",
                                height: rHeight(12),
                                width: rWidth(12),
                              ),
                              Image.asset(
                                "assets/icons/Star.png",
                                height: rHeight(12),
                                width: rWidth(12),
                              ),
                              Image.asset(
                                "assets/icons/Star.png",
                                height: rHeight(12),
                                width: rWidth(12),
                              ),
                              Image.asset(
                                "assets/icons/Star.png",
                                height: rHeight(12),
                                width: rWidth(12),
                              ),
                              Image.asset(
                                "assets/icons/Star.png",
                                height: rHeight(12),
                                width: rWidth(12),
                              )
                            ],
                          ),
                          Row(
                            children: const [
                              Text("4.8",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w800,
                                  )),
                              Text("\n/5",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ))
                            ],
                          ),
                          const Text("Based on 125 Review",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ))
                        ]),
                  ),
                  kWidth,
                  const Text("User reviews",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const ReviewWidget(),
                  kWidth,
                  const ReviewWidget(),
                  kWidth,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 8),
                    width: rWidth(335),
                    height: rHeight(169),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffececec)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("About the seller",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              )),
                          Text(
                              "“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ”hbbfvdjk jhHBSDJHv lkhjSNDVvilSDBDgvljDSnbh ihjHSDNvvjlDnsvj jhHNSDVi SDJjvnDSIVJ SDVInSDIUn SDvinSDIVn .",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              )),
                          Text("More from the seller",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ))
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: rWidth(335),
        height: rHeight(130),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Color(0x7fececec)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: rHeight(32),
                  width: rWidth(32),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(217, 217, 217, 1)),
                  child: Center(child: Image.asset("assets/images/review.png")),
                ),
                SizedBox(
                  width: rWidth(5),
                ),
                const Text("Arman Rokni",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  width: rWidth(5),
                ),
                const Text("1 day ago",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
            Text(
                "“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ”",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ))
          ],
        ));
  }
}
