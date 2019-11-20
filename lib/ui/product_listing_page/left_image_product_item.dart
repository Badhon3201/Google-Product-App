import 'package:flutter/material.dart';
import 'package:game/models/product.dart';
import 'package:game/ui/product_details_page/product_details_page.dart';
import 'package:game/ui/product_listing_page/blue_button.dart';

class leftImageProductItem extends StatelessWidget {
  final screenHeight;
  final Product product;


  const leftImageProductItem({Key key, this.screenHeight, this.product}):
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => productDetailsPage(product:product)
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 32),
        height: screenHeight * 0.25,
        color: product.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Hero(
                tag:product.name,
                child: Image.asset(product.imagePath),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name, style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    Text(product.description, style: TextStyle(fontSize: 8),),
                    SizedBox(height: 5,),
                    BlueButton(product: product,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
