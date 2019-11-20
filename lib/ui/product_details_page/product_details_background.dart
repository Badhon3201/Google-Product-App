import 'package:flutter/material.dart';

class productDetailsBackground extends StatelessWidget {
  final screenHeight, screenWidth;

  const productDetailsBackground({Key key, this.screenHeight, this.screenWidth}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          left: screenWidth*0.28,
          top: -screenWidth*0.4,
          child: Container(
            height: screenWidth * 1.2,
            width: screenWidth * 1.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff0000ff),
            ),
          ),
        ),
        Positioned(
            left: 20,
            right: 20,
            top: screenHeight * 0.2,
            child: Image.asset("assets/images/google_text_logo.png", color: Color(0xffececec).withOpacity(0.5),),

        ),
      ],
    );
  }
}
