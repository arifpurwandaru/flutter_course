import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/product_admin.dart';
import './pages/home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.deepPurple),
        // home: AuthPage(),
        routes: {
          // slash only ('/') adalah MainActivity atau page yg diload pertama sama seperti definisi home: AuthPage(),
          '/': (BuildContext context) => HomePage(), 
          '/admin':  (BuildContext context) => ProductAdmin(),
        },);
  }
}
