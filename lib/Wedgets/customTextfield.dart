import 'package:flutter/material.dart';

class TexTField extends StatelessWidget {
  TexTField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(borderSide: BorderSide()),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
    );
  }
}
