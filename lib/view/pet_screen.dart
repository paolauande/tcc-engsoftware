import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/default_button.dart';

class PetScreen extends StatelessWidget {
  String value;
  var selectedColor;
  var selectedGender;
  var selectedType;
  var selectedSize;
  File imageFile;

  PetScreen(
      {Key key,
      this.value,
      this.selectedColor,
      this.selectedGender,
      this.selectedType,
      this.selectedSize,
      this.imageFile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF755FEB),
        title: Text(
          "Olá, me chamo $value",
          style: TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.file(
            imageFile,
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              "$selectedType, $selectedGender",
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              "Eu sou $selectedColor e $selectedSize",
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          DefaultButton(colour: Color(0xFFF755FEB), title: "Entrar em contato")
        ],
      ),
    );
  }
}
