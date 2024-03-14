import 'package:flutter/material.dart';

import 'package:ijato/app/components/background_image.dart';
import 'package:ijato/app/components/button_primary.dart';
import 'package:ijato/app/components/dropdown_button.dart';
import 'package:ijato/app/components/logo.dart';
import 'package:ijato/app/components/text_field.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class VehicleRegPage extends StatelessWidget {
  const VehicleRegPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _VehicleRegPage(),
      ),
    );
  }
}

class _VehicleRegPage extends StatelessWidget {
  const _VehicleRegPage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: const Column(
              children: [
                SizedBox(height: 20),
                LogoImage(),
                SizedBox(height: 20),
                Text(
                  "Cadastrar veiculo:",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                DropdownButtonPrimary(textField: "tipo:"),
                SizedBox(height: 20),
                DropdownButtonPrimary(textField: "marca:"),
                SizedBox(height: 20),
                DropdownButtonPrimary(textField: "modelo:"),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("placa:", style: TextStyle(color: Colors.white70)),
                    SizedBox(width: 30),
                    SizedBox(
                      width: 300,
                      child:
                          CupertinoTextFieldExample(textFieldName: "xxx-xxxx"),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      child: ButtonPrimary(
                        color: Colors.grey,
                        buttonPrimaryName: "voltar",
                        nextState: "/login",
                      ),
                    ),
                    SizedBox(width: 30),
                    SizedBox(
                      width: 150,
                      child: ButtonPrimary(
                        color: Colors.blue,
                        buttonPrimaryName: "cadastrar",
                        nextState: "/registered_vehicle",
                      ),
                    )
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
