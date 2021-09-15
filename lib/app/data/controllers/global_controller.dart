import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/models/product.dart';

class GlobalController extends GetxController {
  List<Product> _products = [];

  Map<String, Product> _favorites = Map();
  Map<String, Product> get favorites => _favorites;


  List<Product> get products => _products;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    _loadProducts();
  }

  Future<void> _loadProducts() async {
    final String productsStrings =
        await rootBundle.loadString('assets/products.json');

    this._products = (jsonDecode(productsStrings) as List)
        .map((e) => Product.fromJson(e))
        .toList();

    print('Productos:::::::');
    update(['products']);
  }

  onFavorite(int index, bool isFavorite) {
    Product product = this._products[index];
    product.isFavorite = isFavorite;
    if(isFavorite) {
      this._favorites[product.name] = product;
    } else {
      this._favorites.remove(product.name);
    }
    update(['products', 'favorites']);
  }
}
