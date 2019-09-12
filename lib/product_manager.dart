import 'package:flutter/material.dart';

import './product.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String,dynamic>> products;

//comment
  ProductManager(this.products);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: Products(products)),
      ],
    );
  }
}
