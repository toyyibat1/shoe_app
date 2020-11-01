import 'package:flutter/material.dart';
import 'package:shoe_app/components/customInpuField.dart';
import 'package:shoe_app/pages/homeScreen/homeScreen.dart';

import 'Body.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/images/back.png",
          ),
          fit: BoxFit.cover,
        )),
        child: Body(emailController: emailController, passwordController: passwordController),
      ),
    );
  }
}

