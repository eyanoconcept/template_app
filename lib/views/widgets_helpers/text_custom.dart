import 'package:flutter/material.dart';

class TextCustom extends Text{

  //constructeur
  TextCustom(String data, {textAlign: TextAlign.center, color: const Color.fromRGBO(26, 55, 123,1), fontSize : 20.0, fontStyle: FontStyle.normal, fontWeight : FontWeight.bold}):
        super(
          data,
          textAlign: textAlign,
          style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontStyle: fontStyle,
              fontWeight: fontWeight
          )
      );
}