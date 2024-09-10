class Product {
  final dynamic id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  final Rating? rating;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.category,
      required this.rating});

  factory Product.fromJson(jsonData) {
    return Product(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'].toString(),
        description: jsonData['description'],
        image: jsonData['image'],
        category: jsonData['category'],
        rating: jsonData['rating'] == null
            ? null
            : Rating.fromJson(jsonData['rating']));
  }
}

class Rating {
  final num rate;
  final num count;

  Rating({required this.rate, required this.count});
  factory Rating.fromJson(jsonData) {
    return Rating(rate: jsonData['rate'], count: jsonData['count']);
  }
}
