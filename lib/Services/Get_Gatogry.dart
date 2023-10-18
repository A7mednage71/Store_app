import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_proj/Models/Prodect_model.dart';
import 'package:store_proj/helper/Api.dart';

class Get_Gatogry {
  Future<List<ProductModel>> get_Gatogry({required String Catogry}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$Catogry');

    List<ProductModel> productslist = [];
    for (var i = 0; i < data.length; i++) {
      productslist.add(ProductModel.fromJson(data[i]));
    }
    return productslist;
  }
}


// ==================== Before refactor =================
// class Get_Gatogry {
//   Future<List<ProductModel>> get_Gatogry({required String Catogry}) async {
//     http.Response response = await http
//         .get(Uri.parse('https://fakestoreapi.com/products/category/$Catogry'));
//     if (response.statusCode == 200) {
//       List<dynamic> data = jsonDecode(response.body);
//       List<ProductModel> productslist = [];
//       for (var i = 0; i < data.length; i++) {
//         productslist.add(ProductModel.fromJson(data[i]));
//       }
//       return productslist;
//     }
//     else
//     {
//       throw Exception('there is problem with status code ${response.statusCode}');
//     }
//   }
// }
