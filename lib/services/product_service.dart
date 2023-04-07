import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_provider_rest_api/models/product.dart';
import 'package:http/http.dart' as http;

String baseURL = 'https://dummyjson.com/products';
String contentTypeHeader = "application/json";

Future<Product?> getProduct(int currentPage) async {
  Product? result;
  try {
    final response = await http.get(
      Uri.parse("$baseURL/$currentPage"),
      headers: {
        HttpHeaders.contentTypeHeader: contentTypeHeader,
      },
    );

    Map<String, dynamic>? jsonResult = _responseStatusChecker(response);

    if (jsonResult!.length > 1) {
      result = Product.fromJson(jsonResult);
    }
  } catch (err) {
    debugPrint("$err");
  }

  return result;
}

_responseStatusChecker(http.Response response) {
  if (response.statusCode == 200) {
    return json.decode(response.body);
  }
}
