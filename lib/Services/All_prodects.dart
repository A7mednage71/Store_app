import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:store_proj/Models/Prodect_model.dart';
import 'package:store_proj/helper/Api.dart';

class AllProducts_service {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productslist = [];
    for (var element in data) {
      productslist.add(ProductModel.fromJson(element));
    }
    return productslist;
  }
}

// http ==> body
// dio ==> data
