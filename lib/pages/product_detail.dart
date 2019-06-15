import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Detail'),
        ),
        body: Column(
          children: <Widget>[
            Text('This is the product details'),
            RaisedButton(
              child: Text('BACK'),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ));
  }
}
