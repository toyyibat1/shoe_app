import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  Icon fieldIcon;
  String hintText;
  TextEditingController controller;

  CustomInputField(this.fieldIcon, this.hintText, this.controller);

  @override
  Widget build(BuildContext context) {
        return Container(
          width: 350,
          child: Material(
            color: Colors.grey[300],
            elevation: 5.0,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: fieldIcon,
                ),
                Container(    
                  width: 300,
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controller,
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: hintText,
                    
                  ),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
