import 'package:flutter/material.dart';
import 'dart:async';

class ProductDetail extends StatelessWidget {
  final Map<String, String> param;

  ProductDetail(this.param);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are You Sure?'),
            content: Text('This action cannot be undone!!'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(child: Text('Continue'),onPressed: (){
                Navigator.pop(context); //pop the dialog (destroy)
                Navigator.pop(context,true);//pass boolean true when pop (back)
              },)
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print('Back button pressed!!');
          Navigator.pop(context, false);
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
                      onPressed: () => _showWarningDialog(context), 
                    ))
              ],
            )));
  }
}
