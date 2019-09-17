import 'package:custom_navigator_example/page_e.dart';
import 'package:custom_navigator_example/resourses/custom_navigator/custom_navigator.dart';
import 'package:custom_navigator_example/resourses/custom_navigator/custom_navigator_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageD extends StatelessWidget {
  Function customNavigationTransition =
      CustomNavigatorTransition.scaleTransition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Página D',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  CustomNavigator.push(
                    context,
                    PageE(),
                    customNavigationTransition,
                  );
                },
                child: Text('Navegar para a página E'),
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Navegar de volta para a página C'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
