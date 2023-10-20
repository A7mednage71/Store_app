import 'package:store_proj/Models/product_model.dart';
import 'package:store_proj/helper/Api.dart';

class Update_product {
  Future<ProductModel> Updateproduct(
      {required int id,
      required String title,
      required double price,
      required String description,
      required String image,
      required String Catogry}) async {
    Map<String, dynamic> data =
        await Api().put(Url: 'https://fakestoreapi.com/products/$id', body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": Catogry
    });

    return ProductModel.fromJson(data);
  }
}
