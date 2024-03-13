// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

class UnderlinedText extends StatefulWidget {
  final String underlinedText;
  final String nextState;

  const UnderlinedText(
      {super.key, required this.underlinedText, required this.nextState});

  @override
  State<UnderlinedText> createState() => _UnderlinedTextState();
}

class _UnderlinedTextState extends State<UnderlinedText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CupertinoButton(
          child: Text(
            widget.underlinedText,
            style: const TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          onPressed: () {
            Routefly.navigate(widget.nextState);
          },
        ),
      ],
    );
  }
}
