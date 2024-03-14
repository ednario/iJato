import 'package:flutter/material.dart';

import 'package:ijato/app/components/background_image.dart';
import 'package:ijato/app/components/logo.dart';
import 'package:ijato/app/components/button_primary.dart';
import 'package:ijato/app/components/check_box.dart';
import 'package:ijato/app/components/text_field.dart';
import 'package:ijato/app/components/underlined_text.dart';

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
    return Stack(
      children: [
        const BackgroundImage(),
        SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoImage(),
                SizedBox(height: 20),
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
                    UnderlinedText(
                      underlinedText: "Esqueci minha senha",
                      nextState: "/register",
                    ),
                    UnderlinedText(
                      underlinedText: "Cadastrar-se",
                      nextState: "/user_type",
                    )
                  ],
                ),
                SizedBox(height: 20),
                ButtonPrimary(
                  color: Colors.blue,
                  buttonPrimaryName: "Entrar",
                  nextState: '/home',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
