import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorUtil {
  static Future<dynamic> push(BuildContext context, Widget child) {
    return _pushRightToLeftWithFade(context, child: child);
  }

  static Future<dynamic> pushReplacement(BuildContext context, Widget child) {
    return _pushRightToLeftWithFadeReplace(context, child: child);
  }

  static Future<dynamic> _pushRightToLeftWithFade(
    BuildContext context, {
    required Widget child,
  }) {
    return _pushWithCustomFade(
      context,
      child: child,
    );
  }

  static Future<dynamic> _pushRightToLeftWithFadeReplace(
    BuildContext context, {
    required Widget child,
  }) {
    return _pushWithCustomFadeReplace(
      context,
      child: child,
    );
  }

  static Future<dynamic> _pushWithCustomFade(BuildContext context,
      {required Widget child}) {
    return Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => child,
        settings: RouteSettings(name: child.runtimeType.toString()),
      ),
    );
  }

  static Future<dynamic> _pushWithCustomFadeReplace(BuildContext context,
      {required Widget child}) {
    return Navigator.pushReplacement(
      context,
      CupertinoPageRoute(
        builder: (context) => child,
        settings: RouteSettings(name: child.runtimeType.toString()),
      ),
    );
  }

  static Future<dynamic> pushAndRemoveUntilWithFade(
    BuildContext context,
    Widget child,
  ) {
    return Navigator.pushAndRemoveUntil<void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => child,
        settings: RouteSettings(name: child.runtimeType.toString()),
      ),
      ModalRoute.withName('/'),
    );
  }

  static void popToFirstScreen(BuildContext context) {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
}
