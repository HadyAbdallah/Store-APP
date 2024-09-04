class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final Rating rating;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory Product.fromJson(jsonData) {
    return Product(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: Rating.fromJson(jsonData['rating']));
  }
}

class Rating {
  final double rate;
  final int count;

  Rating({required this.rate, required this.count});
  factory Rating.fromJson(jsonData) {
    return Rating(rate: jsonData['rate'], count: jsonData['count']);
  }
}
