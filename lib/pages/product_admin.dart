import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Product Admin'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.create),
                  text: 'Create Product',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'My Product',
                )
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            ProductCreatePage(),
            ProductListPage()
          ],)
        ));
  }
}
