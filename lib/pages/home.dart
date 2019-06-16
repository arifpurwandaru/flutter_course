import 'package:flutter/material.dart';

import '../product_manager.dart';
import './product_admin.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Choose'),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProductAdmin()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Jangkrik'),
      ),
      body: ProductManager(),
    );
  }
}
