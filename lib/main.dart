import 'package:flutter/material.dart';
import 'package:flutter_provider_rest_api/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Provider + rest API',
      home: Home(),
    );
  }
}
