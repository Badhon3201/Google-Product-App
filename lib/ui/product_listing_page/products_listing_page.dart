import 'package:flutter/material.dart';
import 'package:game/models/product.dart';
import 'package:game/ui/product_listing_page/left_image_product_item.dart';
import 'package:game/ui/product_listing_page/right_image_product_item.dart';
import 'package:game/ui/product_listing_page/tow_product_item.dart';
import 'allProductItem.dart';
import 'package:game/widgets/red_button.dart';
import 'allProductItem.dart';
import 'topbar.dart';

class productListingPage extends StatelessWidget {
  final screenHeight;
  final Product product1, product2;

  const productListingPage({Key key, this.screenHeight, this.product1,this.product2}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset("assets/images/google_logo.png"),
        ),
        actions: <Widget>[
          Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset("assets/icons/menu.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopBar(),
            rightImageProductItem(screenHeight: screenHeight, product:pixel),
            leftImageProductItem(screenHeight: screenHeight, product:stadia),
            towProductItem(
              screenHeight:screenHeight,
              product1:pixalStand,
              product2:dayDrem,
            ),
            FlatButton(
              textColor: Colors.teal,
              color: Colors.black12,
              child: Text("View All"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => allProductItem(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
