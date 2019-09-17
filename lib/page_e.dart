import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Página E',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Navegar de volta para a página D'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
