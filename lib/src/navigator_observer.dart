import 'package:flutter/material.dart';
import 'package:flutter_ytlog/flutter_ytlog.dart';

class NavigatorObserver<R extends Route<dynamic>> extends RouteObserver<R> {
  final String _tag = 'NavigatorObserver';

  @override
  void didPush(Route route, Route? previousRoute) async {
    super.didPush(route, previousRoute);
    Log.i(_tag, '⤴️ Pushed to route: ${route.settings.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    String curPageName = newRoute?.settings.name ?? '';
    Log.i(_tag, '🔂 Replaced with route: $curPageName');
  }

  @override
  void didPop(Route route, Route? previousRoute) async {
    super.didPop(route, previousRoute);
    String curPageName = previousRoute?.settings.name ?? '';
    Log.i(_tag, '⤵️ Popped to route: $curPageName');
  }
}
