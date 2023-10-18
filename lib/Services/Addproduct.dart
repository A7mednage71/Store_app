
import 'package:store_proj/Models/Prodect_model.dart';
import 'package:store_proj/helper/Api.dart';

class AddProject {
  Future<ProductModel> addproject(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String Catogry}) async {
    Map<String, dynamic> data =
        await Api().post(Url: 'https://fakestoreapi.com/products', body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": Catogry
    });

    return ProductModel.fromJson(data);
  }
}
