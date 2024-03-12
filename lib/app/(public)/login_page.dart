import 'package:flutter/material.dart';

import 'package:ijato/app/components/background-image.dart';
import 'package:ijato/app/components/logo.dart';
import 'package:ijato/app/components/button-primary.dart';
import 'package:ijato/app/components/check-box.dart';
import 'package:ijato/app/components/text-filed.dart';
import 'package:ijato/app/components/underlined-text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _LoginPage(),
      ),
    );
  }
}

class _LoginPage extends StatelessWidget {
  const _LoginPage();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        const BackgroundImage(),
        SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            width: size.width,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 24),
                LogoImage(),
                SizedBox(height: 30),
                CupertinoTextFieldExample(textFieldName: "login"),
                SizedBox(height: 20),
                CupertinoTextFieldExample(textFieldName: "senha"),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CheckBox(),
                    Text(
                      "Lembrar de mim",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UnderlinedText(underlinedText: "Esqueci minha senha"),
                    UnderlinedText(underlinedText: "Cadastrar-se")
                  ],
                ),
                SizedBox(height: 20),
                ButtonPrimary(buttonPrimaryName: "Entrar"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
