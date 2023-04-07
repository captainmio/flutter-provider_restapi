import 'package:flutter/material.dart';
import 'package:flutter_provider_rest_api/store/product_model.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // this is just a testing, call immediately the service and check the result
  @override
  void initState() {
    super.initState();

    final product = Provider.of<ProductModel>(context, listen: false);
    product.getProductData();
  }

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider + rest API'),
      ),
      body: !product.loading
          ? Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${product.products?.title}",
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "${product.products?.description}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // <-- spaceBetween
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            debugPrint('Do Previous');
                          },
                          child: const Text('< Previous'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            debugPrint('Do Next');
                          },
                          child: const Text('Next >'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          : const SpinKitThreeBounce(
              color: Colors.black,
              size: 50.0,
            ),
    );
  }
}
