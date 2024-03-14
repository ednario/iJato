import 'package:flutter/material.dart';

import 'package:ijato/app/components/background_image.dart';
import 'package:ijato/app/components/logo.dart';

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
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoImage(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
