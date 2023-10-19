// class ProductModel {
//   final int id;
//   final String title;
//   final double price;
//   final String description;
//   final String category;
//   final String image;
//   final Rating rating;

//   ProductModel(
//       {required this.id,
//       required this.title,
//       required this.price,
//       required this.description,
//       required this.category,
//       required this.image,
//       required this.rating});

//   factory ProductModel.fromJson(json) {
//     return ProductModel(
//       id: json['id'] as int,
//       title: json['title'],
//       price: json['price'] as double,
//       description: json['description'],
//       category: json['category'],
//       image: json['image'],
//       rating: Rating.fromJson(json['rating']),
//     );
//   }
// }

// class Rating {  
//   final double rate;
//   final int count;

//   Rating({required this.rate, required this.count});

//   factory Rating.fromJson(json) {
//     return Rating(
//       rate: json['rate'] as double,
//       count: json['count'] as int,
//     );
//   }
// }
