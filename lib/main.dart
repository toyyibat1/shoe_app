import 'package:flutter/material.dart';
import 'package:shoe_app/pages/loginScreen/loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,     
      )),
      home: LoginScreen(),
    );
  }
}