import 'package:flutter/material.dart';
import 'package:game/models/product.dart';
import 'package:game/ui/product_details_page/allProductItemWidget.dart';
import 'package:game/ui/product_details_page/product_details_top_bar.dart';
import 'package:game/ui/product_listing_page/left_image_product_item.dart';
import 'package:game/ui/product_listing_page/right_image_product_item.dart';
import 'package:game/ui/product_listing_page/tow_product_item.dart';
import 'allProductItem.dart';
import 'package:game/widgets/red_button.dart';
import 'allProductItem.dart';
import 'topbar.dart';

class allProductItem extends StatelessWidget {
  final screenHeight;
  final Product product1, product2,product3;

  const allProductItem({Key key, this.screenHeight, this.product1,this.product2,this.product3}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            productDetailsTopBar(),
            TopBar(),
            allProductItemWidget(
              screenHeight:screenHeight,
              product1:pixel,
              product2:stadia,
              product3:watch,
            ),
          ],
        ),
      ),
    );
  }
}
