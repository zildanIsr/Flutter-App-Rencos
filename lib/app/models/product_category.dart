import 'package:nylo_framework/nylo_framework.dart';

import 'product.dart';

/// ProductCategory Model.

class ProductCategory extends Model {
  String? category;
  List<Product>? products;

  ProductCategory({required this.category, required this.products});

  ProductCategory.fromJson(dynamic data) {}

  toJson() {}
}
