import 'package:flutter/material.dart';

import 'package:ijato/app/components/background_image.dart';
import 'package:ijato/app/components/check_box.dart';
import 'package:ijato/app/components/logo.dart';
import 'package:ijato/app/components/button_primary.dart';
import 'package:ijato/app/components/text_field.dart';
import 'package:ijato/app/components/underlined_text.dart';

class EstablishmentReg extends StatelessWidget {
  const EstablishmentReg({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _EstablishmentReg(),
      ),
    );
  }
}

class _EstablishmentReg extends StatelessWidget {
  const _EstablishmentReg();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  LogoImage(),
                  SizedBox(height: 15),
                  CupertinoTextFieldExample(textFieldName: "nome"),
                  SizedBox(height: 15),
                  CupertinoTextFieldExample(textFieldName: "sobrenome"),
                  SizedBox(height: 15),
                  CupertinoTextFieldExample(textFieldName: "e-mail"),
                  SizedBox(height: 15),
                  CupertinoTextFieldExample(textFieldName: "telefone"),
                  SizedBox(height: 15),
                  CupertinoTextFieldExample(textFieldName: "senha"),
                  SizedBox(height: 15),
                  CupertinoTextFieldExample(textFieldName: "confirmar senha"),
                  SizedBox(height: 15),
                  Text(
                    "Estabelecimento",
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 15),
                  CupertinoTextFieldExample(textFieldName: "CEP"),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 300,
                        child: CupertinoTextFieldExample(textFieldName: "rua"),
                      ),
                      SizedBox(width: 15),
                      SizedBox(
                        width: 85,
                        child: CupertinoTextFieldExample(textFieldName: "N°"),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  CupertinoTextFieldExample(textFieldName: "nome"),
                  SizedBox(height: 15),
                  CupertinoTextFieldExample(textFieldName: "CPF/CNPJ"),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CheckBox(),
                      UnderlinedText(
                        underlinedText: "Li e aceito os termos",
                        nextState: "#",
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  ButtonPrimary(
                    color: Colors.blue,
                    buttonPrimaryName: "cadastrar",
                    nextState: "/login",
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ja possui um",
                        style: TextStyle(color: Colors.white70),
                      ),
                      UnderlinedText(
                        underlinedText: "login?",
                        nextState: "/login",
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
