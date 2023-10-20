import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_proj/Models/product_model.dart';
import 'package:store_proj/Services/Update_product.dart';
import 'package:store_proj/Wedgets/customTextfield.dart';
import 'package:store_proj/Wedgets/icon_Butoom.dart';

class UpdateBroduct extends StatefulWidget {
  UpdateBroduct({super.key, required this.model});

  final ProductModel model;

  @override
  State<UpdateBroduct> createState() => _UpdateBroductState();
}

class _UpdateBroductState extends State<UpdateBroduct> {
  String? productName;

  double? productPrice;

  String? productDescription;

  String? productImage;

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Update Broduct',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              TexTField(
                hint: 'product title',
                onchange: (data) {
                  productName = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TexTField(
                hint: 'Description',
                onchange: (data) {
                  productDescription = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TexTField(
                type: TextInputType.number,
                hint: 'price',
                onchange: (data) {
                  productPrice = double.tryParse(data);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TexTField(
                hint: 'image',
                onchange: (data) {
                  productImage = data;
                },
              ),
              const SizedBox(
                height: 60,
              ),
              Material_buttom_wedget(
                txt: 'Update',
                onpress: () async {
                  setState(() {
                    isloading = true;
                  });
                  await Update_product().Updateproduct(
                    id: widget.model.id!,
                    title: productName == null
                        ? widget.model.title!
                        : productName!,
                    description: productDescription == null
                        ? widget.model.description!
                        : productDescription!,
                    image: productImage == null
                        ? widget.model.image!
                        : productImage!,
                    price: productPrice == null
                        ? 10
                        : productPrice!,
                    Catogry: widget.model.category!,
                  );

                  try {
                    // await Update_product().Updateproduct(
                    //   id: widget.model.id!,
                    //   title: productName == null
                    //       ? widget.model.title!
                    //       : productName!,
                    //   description: productDescription == null
                    //       ? widget.model.description!
                    //       : productDescription!,
                    //   image: productImage == null
                    //       ? widget.model.image!
                    //       : productImage!,
                    //   price: productPrice == null
                    //       ? widget.model.price!
                    //       : productPrice!,
                    //   Catogry: widget.model.category!,
                    // );
                    print('success');
                  } catch (e) {
                    print(e.toString());
                  }

                  setState(() {
                    isloading = false;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
