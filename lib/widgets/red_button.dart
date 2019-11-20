import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final String buttonText;

  const RedButton({Key key,this.buttonText, onPressed}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){},
      textColor: Colors.white,
      color: Color(0xffda1d21),
      child: Text(
        buttonText.toUpperCase(),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          )
      ),
    );
  }
}
