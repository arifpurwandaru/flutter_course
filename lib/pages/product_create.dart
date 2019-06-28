import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageStage();
  }
}

class _ProductCreatePageStage extends State<ProductCreatePage> {
  String titleValue;
  String descriptionValue;
  double price;

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Product Title'),
              onChanged: (String val) {
                setState(() {
                  titleValue = val;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Description'),
              maxLines: 4,
              onChanged: (String val) {
                setState(() {
                  descriptionValue = val;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.number,
              onChanged: (String val) {
                setState(() {
                  price = double.parse(val);
                });
              },
            ),
          ],
    ));
  }
}
