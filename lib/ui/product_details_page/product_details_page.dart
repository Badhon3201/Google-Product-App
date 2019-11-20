import 'package:flutter/material.dart';
import 'package:game/models/product.dart';
import 'package:game/ui/product_details_page/product_details_content.dart';
import 'package:game/ui/product_details_page/product_details_top_bar.dart';
import 'product_details_background.dart';
class productDetailsPage extends StatelessWidget {
  final Product product;

  const productDetailsPage({Key key, @required this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          productDetailsBackground(
              screenHeight: screenHeight,
              screenWidth:screenWidth
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                productDetailsTopBar(),
                productDetailsContent(product:product, screenHeight:screenHeight),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
