import 'package:flutter/material.dart';
import 'package:ijato/app/components/appbar_home.dart';
import 'package:ijato/app/components/avatar.dart';

import 'package:ijato/app/components/logo.dart';
import 'package:ijato/app/components/research_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _HomePage(),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(height: 175, child: AppbarHome()),
        SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: const Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 100, height: 100, child: LogoImage()),
                    SizedBox(width: 200),
                    SizedBox(width: 100, height: 100, child: AvatarImage())
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      "Buscar lava-jato:",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    ResearchField()
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
