// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import 'package:ijato/app/components/background_image.dart';
import 'package:ijato/app/components/button_primary.dart';
import 'package:ijato/app/components/logo.dart';
import 'package:ijato/app/shared/app_images.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class RegisteredVehiclePage extends StatelessWidget {
  const RegisteredVehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _RegisteredVehiclePage(),
      ),
    );
  }
}

class _RegisteredVehiclePage extends StatelessWidget {
  const _RegisteredVehiclePage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const LogoImage(),
                const SizedBox(height: 20),
                const Text(
                  "Cadastrar veiculo:",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  onPressed: null,
                  child: Text(
                    'cadastrado com sucesso!',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(AppImages.circleCheck),
                const SizedBox(height: 20),
                const Text(
                  "cadastrar main um?",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: ButtonPrimary(
                          buttonPrimaryName: 'sim!',
                          nextState: '/vehicle_reg',
                          color: Colors.green),
                    ),
                    SizedBox(width: 30),
                    SizedBox(
                      width: 150,
                      child: ButtonPrimary(
                          buttonPrimaryName: 'nao, continuar!',
                          nextState: '/home',
                          color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
