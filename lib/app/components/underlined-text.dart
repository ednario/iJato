// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnderlinedText extends StatelessWidget {
  final String underlinedText;

  const UnderlinedText({super.key, required this.underlinedText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CupertinoButton(
          child: Text(
            underlinedText,
            style: const TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
