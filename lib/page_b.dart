import 'package:custom_navigator_example/page_c.dart';
import 'package:custom_navigator_example/resourses/custom_navigator/custom_navigator.dart';
import 'package:custom_navigator_example/resourses/custom_navigator/custom_navigator_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  Function customNavigationTransition =
      CustomNavigatorTransition.rotationTransition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Página B',
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
                    PageC(),
                    customNavigationTransition,
                  );
                },
                child: Text('Navegar para a página C'),
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Navegar de volta para a página A'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
