import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

class ButtonPrimary extends StatefulWidget {
  final String nextState;
  final String buttonPrimaryName;
  final Color color;

  const ButtonPrimary(
      {super.key,
      required this.buttonPrimaryName,
      required this.nextState,
      required this.color});

  @override
  State<ButtonPrimary> createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        width: size.width,
        child: CupertinoButton(
          padding: const EdgeInsets.all(22),
          color: widget.color,
          child: Text(
            widget.buttonPrimaryName,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          onPressed: () {
            Routefly.navigate(widget.nextState);
          },
        ),
      ),
    );
  }
}
