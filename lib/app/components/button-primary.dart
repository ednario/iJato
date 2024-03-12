import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatefulWidget {
  final String buttonPrimaryName;

  const ButtonPrimary({super.key, required this.buttonPrimaryName});

  @override
  State<ButtonPrimary> createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 189,
        child: CupertinoButton(
          padding: const EdgeInsets.all(17),
          color: Colors.blue,
          child: Text(
            widget.buttonPrimaryName,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
