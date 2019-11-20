import 'package:flutter/material.dart';
import 'package:game/models/product.dart';
import 'package:game/ui/product_details_page/icon_title_widget.dart';
import 'package:game/widgets/red_button.dart';
import 'product_details_top_bar.dart';

class productDetailsContent extends StatelessWidget {
  final Product product;
  final screenHeight;

  const productDetailsContent({Key key, this.product, this.screenHeight}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //productDetailsTopBar(),
          SizedBox(
            height: screenHeight * 0.2,
          ),
          Hero(tag:product.name,child: Image.asset(product.imagePath, height: screenHeight * 0.3,)),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Starting",
                style: TextStyle(
                  color: Color(0xff909090),
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$ ",
                      style: TextStyle(
                        color: Color(0xff0000ff),
                        fontSize: 10,
                      ),
                    ),
                    TextSpan(
                      text: "${product.price}",
                      style: TextStyle(
                        color: Color(0xff0000ff),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(product.name + "\t \t \t", style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w900,
              ),),
              Image.asset('assets/images/stadia_logo.png', height: 20.0,),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(product.productInfo+product.productInfo+product.productInfo, style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
          ),),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                iconTitleWidgrt(imagePath: 'assets/icons/create.png', title: 'Create'),
                iconTitleWidgrt(imagePath: 'assets/icons/connect.png', title: 'Connect'),
                iconTitleWidgrt(imagePath: 'assets/icons/discover.png', title: 'Discover'),
              ],
            ),
          ),
          Divider(
            color: Color(0xffECECEC),
            thickness: 1,
            height: 32,
          ),
          Row(
            children: <Widget>[
              RedButton(
                buttonText: 'Pre-Order',
              ),
              Spacer(),
              Material(
                elevation: 4,
                color: Colors.white,
                shape: CircleBorder(),
                child: Icon(
                  Icons.add,
                  size: 35,
                  color: Color(0xff0000ff),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
