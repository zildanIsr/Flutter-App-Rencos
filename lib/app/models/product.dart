import 'package:nylo_framework/nylo_framework.dart';

/// Product Model.

class Product extends Model {
  String? name;
  String? image;
  String? description;
  String? price;

  Product({this.name, this.image, this.description, this.price});

  Product.fromJson(dynamic data) {
    name = data['name'];
    image = data['email'];
    description = data['email'];
    price = data['email'];
  }

  toJson() {}
}
