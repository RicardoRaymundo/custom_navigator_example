import 'package:flutter/material.dart';

/// A classe CustomNavigatorTransition reúne diferentes animações de transição de página customizadas
/// utilizadas pelo CustomNavigator
class CustomNavigatorTransition {

  /// Transição de página com animação de 'slide' horizontal da direita para a esquerda
  static Widget slideTransitionLeft(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: new SlideTransition(
        position: new Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0.0, 0.0),
        ).animate(secondaryAnimation),
        child: child,
      ),
    );
  }

  /// Transição de página com animação de 'slide' horizontal da esquerda para a direita
  static Widget slideTransitionRight(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(-1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: new SlideTransition(
        position: new Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0.0, 0.0),
        ).animate(secondaryAnimation),
        child: child,
      ),
    );
  }

  /// Transição de página com animação de 'slide' vertical de baixo para cima
  static Widget slideTransitionUp(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(animation),
      child: new SlideTransition(
        position: new Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0.0, 0.0),
        ).animate(secondaryAnimation),
        child: child,
      ),
    );
  }

  /// Transição de página com animação de 'slide' vertical de cima para baixo
  static Widget slideTransitionDown(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(0.0, -1.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut)),
      child: new SlideTransition(
        position: new Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0.0, 0.0),
        ).animate(secondaryAnimation),
        child: child,
      ),
    );
  }

  /// Transição de página com animação de 'scale' de dentro para fora
  static Widget scaleTransition(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return ScaleTransition(
      scale: Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.fastOutSlowIn,
        ),
      ),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  /// Transição de página com animação de 'rotation' com 'scale' de dentro para fora
  static Widget rotationTransition(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return RotationTransition(
      turns: Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.linear,
        ),
      ),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );

  }

}