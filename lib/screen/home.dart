import 'package:flutter/material.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider + rest API'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "This is home - \$15",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'This is a type of description I want to display',
                textAlign: TextAlign.center,
                style: TextStyle(
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
      ),
    );
  }
}
