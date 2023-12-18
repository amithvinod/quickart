import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:quikart_1/controllers/auth_service.dart';
import 'package:quikart_1/core/colors.dart';
import 'package:quikart_1/ui/authentication/gradient.dart';
import 'package:quikart_1/ui/common_widgets/appbar_widget.dart';
import 'package:quikart_1/ui/main_page/home_screen/home_page.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String? otp;
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
      body: GradientBg(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(
              left: rWidth(32), right: rWidth(44), top: rHeight(63)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_outlined),
                    iconSize: 30,
                  ),
                  SizedBox(
                    height: rHeight(22),
                  ),
                  SizedBox(
                    height: rHeight(40),
                    child: const GradientText(
                      gradient: LinearGradient(colors: gradientcolor),
                      "OTP Verification",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  SizedBox(
                    height: rHeight(18),
                    child: const Text("Please enter the 6 digit OTP code",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  SizedBox(
                    height: rHeight(49),
                  )
                ],
              ),
              Column(
                children: [
                  Form(
                      child: Pinput(
                        
                    length: 6,
                    showCursor: true,
                    defaultPinTheme: PinTheme(
                      height: rHeight(44),
                      width: rWidth(44),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color.fromRGBO(3, 1, 103, 0.50))
                      )
                    ),
                    onCompleted: (value) {
                      setState(() {
                        otp = value;
                      });
                    },
                  )),
                  SizedBox(
                    height: rHeight(31),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: rHeight(46),
                    child: ElevatedButton(
                      onPressed: () {
                        
                        if (otp != null) {
                          verifyOTP(otp!);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Enter 6-digit OTP")));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff6cefef),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text("Start Shopping",
                          style: TextStyle(
                            color: Color(0xff000354),
                            fontSize: 18.688007354736328,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: rHeight(31),
                  ),
                  const Text("10s"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didnt recieve OTP?",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Send Again",
                            style: TextStyle(color: textColor),
                          ))
                    ],
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }

  void verifyOTP(String otp) {
    AuthService.loginWithOTP(otp: otp).then((value) {
      if (value == "Login Successfull") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(value)));
      }
    });
  }
}
