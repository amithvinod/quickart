import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:quikart_1/core/colors.dart';
import 'package:quikart_1/ui/authentication/gradient.dart';
import 'package:quikart_1/ui/authentication/screens/otp_screen.dart';
import 'package:quikart_1/ui/common_widgets/appbar_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formkeySignup = GlobalKey<FormState>();

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
      body: SingleChildScrollView(
        child: GradientBg(
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
                        gradient:LinearGradient(colors: gradientcolor),
                        "Sign Up",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    SizedBox(
                      height: rHeight(18),
                      child: const Text("Create your account with quikart_1",
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
                Form(
                  key: _formkeySignup,
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value != null && value.length != 10) {
                            return "Invalid Phone Number";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone),
                            hintText: "Enter your Phone Number",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(rHeight(10)))),
                      ),
                      SizedBox(
                        height: rHeight(24),
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (email) {
                          return email != null && !EmailValidator.validate(email)
                              ? "Invalid Email"
                              : null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.alternate_email),
                            hintText: "Enter your email ID",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(rHeight(10)))),
                      ),
                      SizedBox(
                        height: rHeight(24),
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                        validator: (name) {
                          if (name != null && name.isEmpty) {
                            return "Enter a Name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Enter your full name",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(rHeight(10)))),
                      ),
                      SizedBox(
                        height: rHeight(50),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: rHeight(46),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkeySignup.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const OTPScreen()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff6cefef),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text("Request OTP",
                              style: TextStyle(
                                color: Color(0xff000354),
                                fontSize: 18.688007354736328,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
