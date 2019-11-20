import 'package:flutter/material.dart';

class Product{
  final String name, description, buttonText , imagePath, price, productInfo;
  Color backgroundColor;

  Product({this.name, this.description, this.buttonText, this.imagePath, this.price, this.productInfo, this.backgroundColor});
}

final Product pixalStand = Product(
  imagePath: "assets/images/pixelstand.webp",
  name: "Sound Box",
  description: "Higher quality sonud",
  buttonText: "CHACK OUT",
    price: "29",
    productInfo: "Sound Quality high and blutooth sound system",
  backgroundColor: Color(0xff9C736A)
);
final Product dayDrem = Product(
  imagePath: "assets/images/daydream.png",
  name: "Google Wirless",
  description: "Modem for internet",
  buttonText: "CHACK OUT",
    price: "59",
    productInfo: "Fast browsing internet modem",
    backgroundColor: Color(0xffD1A197)
);
final Product watch = Product(
    imagePath: "assets/images/watch1.png",
    name: "Smart Watch",
    description: "This is modern watch",
    buttonText: "CHACK OUT",
    price: "32",
    productInfo: "Digital Watch black color",
    backgroundColor: Color(0xffD1A197)
);
final Product tshirt = Product(
    imagePath: "assets/images/tshirt.jpg",
    name: "T-SHIRT",
    description: "Tshirt Color Gorjious",
    buttonText: "CHACK OUT",
    price: "32",
    productInfo: "All color are collected",
    backgroundColor: Color(0xff9C736A)
);
final Product pixel = Product(
  imagePath: "assets/images/pixel.png",
  name: "Android Mobile",
  description: "Android phone new virson here",
  buttonText: "Check OUT",
    price: "10690",
    productInfo: "RAM 4, ROM 64. This is very smuth smart phone and latest Virson",
    backgroundColor: Colors.black26
);
final Product stadia = Product(
  imagePath: "assets/images/stadia.png",
  name: "Google Stadia",
  description: "Electronic Device",
  buttonText: "Check OUT",
  price: "690",
  productInfo: "This very nice product, This Product very very respounse people. hope our rating is go first by that",
  backgroundColor: Colors.grey,
);