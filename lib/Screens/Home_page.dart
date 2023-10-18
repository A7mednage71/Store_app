import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'New Triend',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 130,
              width: 200,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  blurRadius: 30,
                  spreadRadius: 20,
                  offset: const Offset(0, 1),
                ),
              ]),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'handbag lv',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Row(
                        children: [
                          const Text(
                            r'$225',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          const Spacer(),
                          IconButton(
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
              bottom: 70, // top : -50
              child: Image.network(
                'https://assets.ajio.com/medias/sys_master/root/20230609/Fcye/6482cbc0d55b7d0c635c6ca8/-473Wx593H-461442409-green-MODEL.jpg',
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
