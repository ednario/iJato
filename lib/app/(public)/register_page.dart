import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:ijato/app/components/background_image.dart';
import 'package:ijato/app/components/check_box.dart';
import 'package:ijato/app/components/logo.dart';
import 'package:ijato/app/components/button_primary.dart';
import 'package:ijato/app/components/text_field.dart';
import 'package:ijato/app/components/underlined_text.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _RegisterPage(),
      ),
    );
  }
}

class _RegisterPage extends StatelessWidget {
  const _RegisterPage();

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
                    buttonPrimaryName: "cadastrar-se",
                    nextState: "/vehicle_reg",
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
                  Column(
                    children: [
                      Text(
                        "quer cadastrar seu lava jato?",
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(height: 10),
                      ButtonPrimary(
                        color: Colors.green,
                        buttonPrimaryName: "cadastrar estabelecimento",
                        nextState: "/establishment_reg",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
