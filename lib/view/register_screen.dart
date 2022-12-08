import 'package:adotepet/utils/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool showSpinner = false;
  var selectedColor, selectedGender, selectedSize, selectedType;
  List<String> _petType = <String>['Cachorro', 'Gato'];
  List<String> _petSize = <String>['Pequeno', 'Médio', 'Grande'];
  List<String> _petGender = <String>['Macho', 'Fêmea'];
  List<String> _petColor = <String>[
    'Branca',
    'Preta',
    'Cinza',
    'Marrom',
    'Mesclado'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF755FEB),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Container(
          color: Color(0xFFF755FEB),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Cadastre seu pet',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        'Pronto para mudar a vida de um pet?',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DropdownButton(
                      items: _petType
                          .map((value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                                value: value,
                              ))
                          .toList(),
                      onChanged: (selectedAccountType) {
                        print('$selectedAccountType');
                        setState(() {
                          selectedType = selectedAccountType;
                        });
                      },
                      value: selectedType,
                      isExpanded: false,
                      hint: Text(
                        'Tipo de pet',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                    DropdownButton(
                      items: _petSize
                          .map((value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                                value: value,
                              ))
                          .toList(),
                      onChanged: (selectedSize) {
                        print('$selectedSize');
                        setState(() {
                          selectedSize = selectedSize;
                        });
                      },
                      value: selectedSize,
                      isExpanded: false,
                      hint: Text(
                        'Porte',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                    DropdownButton(
                      items: _petGender
                          .map((value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                                value: value,
                              ))
                          .toList(),
                      onChanged: (selectedGender) {
                        print('$selectedGender');
                        setState(() {
                          selectedGender = selectedGender;
                        });
                      },
                      value: selectedGender,
                      isExpanded: false,
                      hint: Text(
                        'Gênero',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                    DropdownButton(
                      items: _petColor
                          .map((value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                                value: value,
                              ))
                          .toList(),
                      onChanged: (selectedColor) {
                        print('$selectedColor');
                        setState(() {
                          selectedColor = selectedColor;
                        });
                      },
                      value: selectedColor,
                      isExpanded: false,
                      hint: Text(
                        'Cor',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                    DefaultButton(
                      colour: Colors.white,
                      title: 'Publicar',
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
