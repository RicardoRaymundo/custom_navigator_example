import 'package:custom_navigator_example/page_b.dart';
import 'package:custom_navigator_example/resourses/custom_navigator/custom_navigator.dart';
import 'package:custom_navigator_example/resourses/custom_navigator/custom_navigator_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  Function customNavigationTransition =
      CustomNavigatorTransition.slideTransitionRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Página A',
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
                  PageB(),
                  customNavigationTransition,
                );
              },
              child: Text('Navegar para a página B'),
            ),
          ],
        ),
      ),
    );
  }
}
