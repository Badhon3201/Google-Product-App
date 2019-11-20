import 'package:flutter/material.dart';
import 'package:game/models/product.dart';
import 'package:game/ui/product_details_page/product_details_page.dart';
import 'ui/product_listing_page/products_listing_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: productListingPage(),
      //home: productDetailsPage(product: stadia,),
    );
  }
}
