import 'package:flutter/material.dart';


class ProductController extends StatelessWidget{
  final Function addProduct;

  ProductController(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
                child: Text('Add Picture'),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                 addProduct('Bingung Kokehan Parameter'); 
                },
              );
  }
  
}