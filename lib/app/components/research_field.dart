import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResearchField extends StatefulWidget {
  const ResearchField({super.key});

  @override
  State<ResearchField> createState() => _ResearchFieldState();
}

class _ResearchFieldState extends State<ResearchField> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoTextField(
        cursorColor: Colors.black,
        textAlign: TextAlign.center,
        padding: EdgeInsets.all(15),
        suffix: Icon(
          Icons.search,
          color: Colors.black54,
        ),
        placeholderStyle: TextStyle(color: Colors.black38, fontSize: 14),
        style: TextStyle(color: Colors.black87, fontSize: 14),
        decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            )),
      ),
    );
  }
}
