import 'package:custom_navigator_example/page_d.dart';
import 'package:custom_navigator_example/resourses/custom_navigator/custom_navigator.dart';
import 'package:custom_navigator_example/resourses/custom_navigator/custom_navigator_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageC extends StatelessWidget {
  Function customNavigationTransition =
      CustomNavigatorTransition.slideTransitionUp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Página C',
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
                    PageD(),
                    customNavigationTransition,
                  );
                },
                child: Text('Navegar para a página D'),
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Navegar de volta para a página B'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
