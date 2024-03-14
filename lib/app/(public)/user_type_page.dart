import 'package:flutter/material.dart';

import 'package:ijato/app/components/background_image.dart';
import 'package:ijato/app/components/logo.dart';
import 'package:ijato/app/components/button_primary.dart';

class UserTypePage extends StatelessWidget {
  const UserTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _UserTypePage(),
      ),
    );
  }
}

class _UserTypePage extends StatelessWidget {
  const _UserTypePage();

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
                ButtonPrimary(
                  color: Colors.blue,
                  buttonPrimaryName: "Usuario",
                  nextState: '/register',
                ),
                SizedBox(height: 20),
                ButtonPrimary(
                  color: Colors.red,
                  buttonPrimaryName: "Estabelecimento",
                  nextState: '/establishment_reg',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
