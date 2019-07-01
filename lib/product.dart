import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Container(
            child: Text(
              products[index]['title'],
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, fontFamily: 'SomplakMaparo'),
            ),
            margin: EdgeInsets.only(top: 10.0),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Product Details'),
                  onPressed: () => Navigator.pushNamed<bool>(
                      context, '/product/' + index.toString()))
            ],
          )
        ],
      ),
    );
  }

//pake ListView.builder supaya ngrender yg ditampilkan saja, tidak ngrender seluruh isi list: for better performance
  @override
  Widget build(BuildContext context) {
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Center(
            child: Text('No products found, please add one'),
          );
  }
}
