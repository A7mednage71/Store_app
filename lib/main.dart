import 'package:flutter/material.dart';
import 'package:store_proj/Screens/Home_page.dart';

void main() {
  runApp(const Store_app());
}

class Store_app extends StatelessWidget {
  const Store_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_Page(
        
      ),
    );
  }
}
