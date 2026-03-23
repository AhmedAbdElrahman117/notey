import 'package:flutter/material.dart';

enum AppTransitionType {
  fadeSlideLeft(-1, 0),
  fadeSlideRight(1, 0),
  fadeSlideUp(0, -1),
  fadeSlideDown(0, 1),
  fadeScale(1, 0);

  final double dx;
  final double dy;
  const AppTransitionType(this.dx, this.dy);
}

class AppTransitions {
  AppTransitions._();

  static final AppTransitions instance = AppTransitions._();

  factory AppTransitions() => instance;

  final Duration _duration = Duration(milliseconds: 350);

  void pushTo(
    BuildContext context, {
    AppTransitionType? type,
    required Widget to,
    bool replace = false,
  }) {
    var builder = _builder(
      to: to,
      type: type ?? AppTransitionType.fadeSlideRight,
    );

    if (replace) {
      Navigator.of(context).pushReplacement(builder);
    } else {
      Navigator.of(context).push(builder);
    }
  }

  void popToFirst(BuildContext context) {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  Widget _checkType({
    required Animation<double> animation,
    required Widget child,
    required AppTransitionType type,
  }) => switch (type) {
    AppTransitionType.fadeSlideLeft ||
    AppTransitionType.fadeSlideUp ||
    AppTransitionType.fadeSlideDown ||
    AppTransitionType.fadeSlideRight => _slide(
      animation: animation,
      dx: type.dx,
      dy: type.dy,
      child: child,
    ),
    AppTransitionType.fadeScale => _scale(
      animation: animation,
      dx: type.dx,
      dy: type.dy,
      child: child,
    ),
  };

  Widget _slide({
    required Animation<double> animation,
    required double dx,
    required double dy,
    required Widget child,
  }) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(dx, dy),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }

  Widget _scale({
    required Animation<double> animation,
    required double dx,
    required double dy,
    required Widget child,
  }) {
    return ScaleTransition(
      scale: animation,
      child: child,
    );
  }

  PageRouteBuilder _builder({
    required Widget to,
    required AppTransitionType type,
  }) {
    return PageRouteBuilder(
      transitionDuration: _duration,
      reverseTransitionDuration: _duration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: _checkType(
            animation: animation,
            child: child,
            type: type,
          ),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) => to,
    );
  }
}
