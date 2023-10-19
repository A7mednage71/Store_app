import 'package:flutter/material.dart';
import 'package:store_proj/Models/product_model.dart';
import 'package:store_proj/Screens/Update_producr_page.dart';

class CustomStack extends StatelessWidget {
  CustomStack({
    super.key,
    required this.model,
  });

  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const UpdateBroduct();
            },
          ),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  blurRadius: 30,
                  spreadRadius: 20,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      model.title!.substring(0, 8),
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Row(
                      children: [
                        Text(
                          r"$" "${model.price.toString()}",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                        const Spacer(),
                        IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: -65,
            child: Image.network(
              model.image!,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
