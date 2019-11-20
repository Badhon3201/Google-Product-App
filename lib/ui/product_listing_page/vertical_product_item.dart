import 'package:flutter/material.dart';
import 'package:game/models/product.dart';

class VerticalProductItem extends StatelessWidget {
  final screenHeight;
  final Product product;

  const VerticalProductItem({Key key, this.screenHeight, this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: product.backgroundColor,
      child: Column(
        children: <Widget>[
          Image.asset(product.imagePath, height: screenHeight * 0.15,),
          SizedBox(height: 5,),
          Text(
            product.name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.pink,
            ),
          ),
          Text(
            product.description,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
