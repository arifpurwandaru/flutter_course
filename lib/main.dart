import 'package:flutter/material.dart';

import './product_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jangkrik'),
        ),
        body: ProductManager('Jangkrik Naga Tirta'),
      ),
    );
  }
}
