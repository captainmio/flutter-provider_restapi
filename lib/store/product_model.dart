import 'package:flutter/material.dart';
import 'package:flutter_provider_rest_api/models/product.dart';
import 'package:flutter_provider_rest_api/services/product_service.dart';

class ProductModel extends ChangeNotifier {
  Product? products;
  bool loading = true;

  getProductData() async {
    loading = true;
    products = await getProduct();
    loading = false;
    notifyListeners();
  }
}
