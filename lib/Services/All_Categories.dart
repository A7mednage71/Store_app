import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_proj/helper/Api.dart';

class All_Categories {
  Future<List<dynamic>> Get_All_Categories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
