import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String emailValue;
  String passwordValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
          margin: EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'E-Mail'),
                keyboardType: TextInputType.emailAddress,
                onChanged: (String value){
                  emailValue = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (String value){
                  passwordValue = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text('LOGIN'),
                onPressed: () {
                  print(emailValue);
                  print(passwordValue);
                  Navigator.pushReplacementNamed(context, '/product');
                },
              ),
            ],
          )),
    );
  }
}
