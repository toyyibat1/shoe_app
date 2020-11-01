import 'package:flutter/material.dart';
import 'package:shoe_app/components/customInpuField.dart';

import '../homeScreen/homeScreen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.emailController,
    @required this.passwordController,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            width: 400,
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(32.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Log in",
                          style:
                              TextStyle(fontSize: 40, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  CustomInputField(
                      Icon(
                        Icons.email,
                      ),
                      'Email',
                      emailController),
                  SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                      Icon(
                        Icons.lock,
                      ),
                      'Password',
                      passwordController),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 60,
                    child: RaisedButton(
                      color: Color.fromRGBO(255, 114, 98, 0.9),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Log in with your account    ",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(32.0),
                    child: Row(
                      children: <Widget>[
                        Text("Dont have an account? "),
                        Text(
                          "SignUp",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 114, 98, 0.6)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
