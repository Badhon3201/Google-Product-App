import 'package:flutter/material.dart';
import 'package:game/models/product.dart';
import 'package:game/ui/product_details_page/product_details_page.dart';
import 'package:game/ui/product_listing_page/blue_button.dart';

class rightImageProductItem extends StatelessWidget {
  final screenHeight;
  final Product product;


  const rightImageProductItem({Key key, this.screenHeight, this.product}):
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
        height: screenHeight * 0.3,
        color: product.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.description, style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  SizedBox(height: 10,),
                  BlueButton(product: product,)
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: -50,
                    top: 50,
                    child: Transform.rotate(
                      angle: -0.2,
                        child: Image.asset(product.imagePath)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
