class ProductModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? image;
  Rating? rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,required this.rating});
  factory ProductModel.fromJson( Map<String, dynamic> json){
    return ProductModel(
    id:json['id'],
    title:json['title'],
    price:json['price'],
    description:json['description'],
        image:json['image'],
      rating: Rating.fromJson(json['rating']),
    );
  }
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'price': price,
    'description': description,
    'image': image,
    'rating':rating!.toJson()

  };
}
class Rating{
  double? rate;
  int? count;
  Rating({required this.rate,required this.count});
  Rating.fromJson(dynamic json) {
    rate = json['rate'];
    count = json['count'];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = rate;
    map['count'] = count;
    return map;
  }
}
