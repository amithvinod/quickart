import 'package:flutter/material.dart';
import 'package:quikart_1/core/colors.dart';
import 'package:quikart_1/ui/authentication/screens/signin_screen.dart';
import 'package:quikart_1/ui/authentication/screens/signup_screen.dart';
import 'package:quikart_1/ui/common_widgets/appbar_widget.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

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
      
      resizeToAvoidBottomInset: false,
      
      body: Container(
        decoration:BoxDecoration(gradient: LinearGradient(colors: bggradientColors,begin: Alignment.bottomLeft,end: Alignment.topRight)),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(
              top: rHeight(99),
              bottom: rHeight(50),
              left: rWidth(41),
              right: rWidth(33)),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/img_signup.png",
                      height: rHeight(240),
                      width: rWidth(319),
                    ),
                    const Spacer(),
                    const GradientText(
                      gradient:LinearGradient(colors: gradientcolor),
                      "Welcome To Quikart",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: rHeight(10),
                    ),
                    const Text(
                        "Mllions of Products | Fast Reliable Secure Platform",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SizedBox(
                        height: rHeight(34),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: rHeight(46),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignupScreen();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff6cefef),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text("Sign up free",
                              style: TextStyle(
                                color: Color(0xff000354),
                                fontSize: 16.688007354736328,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: rHeight(20),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: rHeight(46),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SigininScreen();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text("Continue with Phone",
                              style: TextStyle(
                                color: Color(0xff000354),
                                fontSize: 16.688007354736328,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: rHeight(20),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: rHeight(46),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SigininScreen();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.smartphone,
                                color: Colors.black,
                              ),
                              Text("Continue with email",
                                  style: TextStyle(
                                    color: Color(0xff000354),
                                    fontSize: 16.688007354736328,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          const Text("By continuing, you agree to quikart_1’s",
                              style: TextStyle(
                                color: red,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Terms and Condtions",
                                    style: TextStyle(
                                      color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  )),
                              const Text("and",
                                  style: TextStyle(
                                    color: red,
                                      fontSize: 10, fontWeight: FontWeight.w600)),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "privacy policy",
                                    style: TextStyle(
                                      color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
