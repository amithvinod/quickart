import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quikart_1/controllers/auth_service.dart';
import 'package:quikart_1/core/colors.dart';
import 'package:quikart_1/ui/authentication/screens/first_screen.dart';
import 'package:quikart_1/ui/main_page/home_screen/home_page.dart';

import 'package:quikart_1/ui/main_page/main_page_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: (textColor), fontFamily: "Poppins"),
          bodyMedium: TextStyle(color: (textColor), fontFamily: "Poppins"),
          bodySmall: TextStyle(color: (textColor), fontFamily: "Poppins"),
          labelLarge: TextStyle(color: (textColor), fontFamily: "Poppins"),
          labelMedium: TextStyle(color: (textColor), fontFamily: "Poppins"),
          labelSmall: TextStyle(color: (textColor), fontFamily: "Poppins"),
        ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: primary,
      ),
      home: const CheckUserLogin(),
    );
  }
}

class CheckUserLogin extends StatefulWidget {
  const CheckUserLogin({super.key});

  @override
  State<CheckUserLogin> createState() => _CheckUserLoginState();
}

class _CheckUserLoginState extends State<CheckUserLogin> {
  @override
  void initState() {
    AuthService.isLoggedin().then((value) {
      if (value) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MainPageScreen()));
      }
      else{
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const FirstScreen()));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
