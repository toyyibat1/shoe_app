import 'package:flutter/material.dart';
import 'package:shoe_app/pages/homeScreen/HomeFavorites.dart';
import '../detailsScreen/detailScreen.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    categories(
                        name: "Casual",
                        image: "assets/images/12.png",
                        color: Colors.yellow[300],
                        item: "433 items",
                        price: "\$200",
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen()));
                        }),
                    categories(
                        name: "Sports",
                        image: "assets/images/13.png",
                        color: Colors.blue[300],
                        item: "433 items",
                        price: "\$200",
                        textColor: Colors.white,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen()));
                        }),
                  ],
                ),
              ),
              Text(
                "Now Trending",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Favorites(),
            ]),
      ),
    );
  }
}

Widget categories({
  @required String name,
  @required String image,
  @required Function press,
  @required Color color,
  @required String price,
  @required String item,
  Color textColor,
}) {
  return Column(
    children: <Widget>[
      Container(
        height: 300,
        width: 210,
        padding: EdgeInsets.all(10),
        child: Material(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: color,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: textColor)),
                  Image.asset(image, width: 300),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(item),
                          Text(price,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 40.0,
                        height: 50.0,
                        child: new RaisedButton(
                          child: new Icon(Icons.add),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {},
                          textColor: Colors.white,
                          padding: EdgeInsets.all(7),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}

