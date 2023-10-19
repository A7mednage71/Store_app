import 'package:flutter/material.dart';
import 'package:store_proj/Wedgets/customTextfield.dart';

class UpdateBroduct extends StatelessWidget {
  const UpdateBroduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Update Broduct',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          TexTField(hint: 'product title',),
        ],
      ),
    );
  }
}
