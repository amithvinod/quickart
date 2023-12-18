import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:quikart_1/controllers/auth_service.dart';
import 'package:quikart_1/core/colors.dart';
import 'package:quikart_1/ui/authentication/gradient.dart';
import 'package:quikart_1/ui/authentication/screens/otp_screen.dart';
import 'package:quikart_1/ui/authentication/screens/signup_screen.dart';
import 'package:quikart_1/ui/common_widgets/appbar_widget.dart';

class SigininScreen extends StatefulWidget {
  const SigininScreen({super.key});

  @override
  State<SigininScreen> createState() => _SigininScreenState();
}

class _SigininScreenState extends State<SigininScreen> {
  final _signinFormkey = GlobalKey<FormState>();
  TextEditingController _phonecontroller = TextEditingController();

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
                      "Sign In",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  SizedBox(
                    height: rHeight(18),
                    child: const Text("Welcome back to your account",
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
                key: _signinFormkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _phonecontroller,
                      validator: (value) {
                        if (value != null) {
                          return (value.length == 10 ||
                                  EmailValidator.validate(value))
                              ? null
                              : "Invalid email or phone number";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.login_rounded),
                          hintText: "Enter your Phone Number / email ID",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(rHeight(10)))),
                    ),
                    SizedBox(
                      height: rHeight(31),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: rHeight(46),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_signinFormkey.currentState!.validate()) {
                            AuthService.sentOTP(
                                phoneno: int.parse(_phonecontroller.text),
                                errorStep: () => ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                        content: Text("Error sending OTP"),
                                        backgroundColor: red,
                                        )),
                                nextStep: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text("OTP send to your phone number"),
                                          backgroundColor: Colors.green,
                                          ),
                                          );
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const OTPScreen()));
                                });
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
                    SizedBox(
                      height: rHeight(31),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "New Customer?",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignupScreen()));
                              }
                            },
                            child: const Text(
                              "SignUp",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
