import 'package:flutter/material.dart';

class Material_buttom_wedget extends StatelessWidget {
  Material_buttom_wedget({super.key, required this.txt, this.onpress});

  final String txt;
  VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: MaterialButton(
        onPressed: onpress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color(0xffF14052),
        height: 50,
        minWidth: double.infinity,
        child: Text(
          txt,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
