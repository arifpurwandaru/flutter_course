import 'package:flutter/material.dart';
import 'dart:async';

class ProductDetail extends StatelessWidget {
  final Map<String, String> param;

  ProductDetail(this.param);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (){
          print('Back button pressed!!');
          Navigator.pop(context,false);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text(param['title']),
            ),
            body: Column(
              children: <Widget>[
                Image.asset(param['imageUrl']),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(param['description'])),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text('DELETE'),
                      onPressed: () => Navigator.pop(
                          context, true), //pass boolean true when pop (back)
                    ))
              ],
            )));
  }
}
