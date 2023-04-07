import 'package:flutter/material.dart';
import 'package:flutter_provider_rest_api/models/product.dart';
import 'package:flutter_provider_rest_api/services/product_service.dart';

class ProductModel extends ChangeNotifier {
  Product? products;
  bool loading = true;
  int currentProduct = 1;

  getProductData() async {
    loading = true;
    products = await getProduct(currentProduct);
    loading = false;
    notifyListeners();
  }

  incrementCurrentProduct() {
    currentProduct++;
    getProductData();
    notifyListeners();
  }

  decrementCurrentProduct() {
    if (currentProduct > 1) {
      currentProduct--;
      getProductData();
      notifyListeners();
    }
  }
}
