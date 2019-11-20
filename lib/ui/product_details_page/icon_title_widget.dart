import 'package:flutter/material.dart';
import 'package:game/models/product.dart';
class iconTitleWidgrt extends StatelessWidget {
  final imagePath, title;

  const iconTitleWidgrt({
    Key key, @required this.imagePath, @required this.title
}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            color: Color(0xffDA1D21),
            height: 25,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 9,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
