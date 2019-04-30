import 'package:flutter/material.dart';

import './product.dart';

class ProductManager extends StatefulWidget{
  final String startingProduct;
  
  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
  
}

class _ProductManagerState extends State<ProductManager>{
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text('Add Picture'),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                  });
                  
                },
              ),
            ),
            Products(_products),
          ],
        );
      
  }
  
}