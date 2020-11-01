import 'package:flutter/material.dart';
import '../detailsScreen/detailScreen.dart';

class HomeFavorities extends StatelessWidget {
  final String shopName;
  final Function press;
  final Color color;
  const HomeFavorities({Key key, this.shopName, this.press, this.color})
      : super(key: key);
  // Color color = Colors.pink[100];
  // Color colorblack = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                              "assets/images/16.png",
                            ),
                          )),
                          child: InkWell(
                            onTap: press,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/nikr.png",
                                    height: 50,
                                  ),
                                  SizedBox(height: 20),
                                  Text("AIRMAX",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                      )),
                                  Text("2020",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 40,
                                      )),
                                  SizedBox(height: 20),
                                  Row(
                                    children: <Widget>[
                                      Text("\$ 200",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Icon(Icons.arrow_forward)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                  Text(
                    "Favorites",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Favorites(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Favorites extends StatelessWidget {
  const Favorites({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            categories(
                name: "July Kingston",
                image: "assets/images/12.png",
                color: Colors.pink[50],
                borderColor: Colors.pink[50],
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen()));
                }),
            SizedBox(
              width: 20,
            ),
            categories(
                name: "August Kingston",
                image: "assets/images/13.png",
                color: Colors.pink[50],
                borderColor: Colors.pink[50],
                press: () {}),
            SizedBox(
              width: 20,
            ),
            categories(
                name: "September Kingston",
                image: "assets/images/14.png",
                color: Colors.blue[100],
                borderColor: Colors.blue[100],
                press: () {}),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Widget categories({
  @required String name,
  @required String image,
  @required Function press,
  @required Color color,
  Color borderColor,
}) {
  return Column(
    children: <Widget>[
      Container(
        height: 130,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: borderColor, borderRadius: BorderRadius.circular(20)),
        // decoration: BoxDecoration(boxShadow: [
        //   BoxShadow(
        //   )
        // ], color: Colors.pink[50], borderRadius: BorderRadius.circular(10.0)),
        child: Material(
          color: color,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(image, height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(name)
    ],
  );
}
