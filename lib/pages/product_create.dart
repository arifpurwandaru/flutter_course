import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageStage();
  }
}

class _ProductCreatePageStage extends State<ProductCreatePage> {
  String strVal = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String val) {
            setState(() {
              strVal = val;
            });
          },
        ),
        Text(strVal)
      ],
    );
  }
}
