import 'package:flutter/material.dart';

import 'itemInfo.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(40),
          child: Text(
            "Explore\nNike Series",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}
