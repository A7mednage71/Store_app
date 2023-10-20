import 'package:flutter/material.dart';

class TexTField extends StatelessWidget {
  TexTField({super.key, required this.hint, required this.onchange, this.type});

  final String hint;
  TextInputType? type;
  final Function(String) onchange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: TextField(
        keyboardType: type,
        onChanged: onchange,
  
        decoration: InputDecoration(
          hintText: hint,
          border: const OutlineInputBorder(borderSide: BorderSide()),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
      ),
    );
  }
}
