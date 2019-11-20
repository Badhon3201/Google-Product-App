import 'package:flutter/material.dart';
import 'package:game/models/product.dart';
import 'package:game/ui/product_details_page/product_details_page.dart';
import 'package:game/ui/product_listing_page/vertical_product_item.dart';

class allProductItemWidget extends StatelessWidget {
  final screenHeight;
  final Product product1, product2,product3;

  const allProductItemWidget({Key key, this.screenHeight, this.product1,this.product2,this.product3}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.25,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Expanded(
      child: GestureDetector(
          onTap: (){
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => productDetailsPage(product:product1)
    ));
    },
      child: VerticalProductItem(
          screenHeight:screenHeight,
          product:product1
      ),),),
    ],
      ),
    );
    }
}


      /*child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => productDetailsPage(product:product1)
                      ));
                    },
                    child: VerticalProductItem(
                        screenHeight:screenHeight,
                        product:product1
                    ),
                  ),
                ),
              ],
            ),

          ),
        ],
      ),*/






      /*child: Row(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => productDetailsPage(product:product1)
                ));
              },
              child: VerticalProductItem(
                  screenHeight:screenHeight,
                  product:product1
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => productDetailsPage(product:product2)
                ));
              },
              child: VerticalProductItem(
                  screenHeight:screenHeight,
                  product:product2
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => productDetailsPage(product:product2)
                ));
              },
              child: VerticalProductItem(
                  screenHeight:screenHeight,
                  product:product3,
              ),
            ),
          ),
        ],
      ),*/