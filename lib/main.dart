import 'package:flutter/material.dart';
import 'package:flutter_provider_rest_api/screen/home.dart';
import 'package:flutter_provider_rest_api/store/product_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductModel(),
      child: const MaterialApp(
        title: 'Provider + rest API',
        home: Home(),
      ),
    );
  }
}
