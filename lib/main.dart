import 'package:flutter/material.dart';
import 'package:login_screen_1/Login_Screen_2/login_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF59c16),
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(),
      //home: OtpScreen(),
      home: LOginScreen2(),
    );
  }
}
