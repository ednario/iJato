import 'package:flutter/material.dart';

const List<String> list = <String>['Teste', 'Two', 'Three', 'Four'];

class DropdownButtonPrimary extends StatefulWidget {
  final String textField;
  const DropdownButtonPrimary({
    super.key,
    required this.textField,
  });

  @override
  State<DropdownButtonPrimary> createState() => _DropdownButtonPrimaryState();
}

class _DropdownButtonPrimaryState extends State<DropdownButtonPrimary> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 55,
            child: Text(
              widget.textField,
              style: const TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 300,
            decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                )),
            padding: const EdgeInsets.all(5),
            child: DropdownButton<String>(
              value: dropdownValue,
              iconEnabledColor: Colors.grey,
              icon: const Icon(Icons.arrow_downward),
              elevation: 14,
              borderRadius: const BorderRadius.all(
                Radius.circular(7),
              ),
              style: const TextStyle(color: Colors.black87),
              underline: Container(
                height: 2,
                color: Colors.white70,
              ),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
