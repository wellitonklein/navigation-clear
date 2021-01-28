import 'package:flutter/material.dart';

import '../../../services/services.dart';
import '../submodules/submodules.dart';

class HomeRouter implements IRoute {
  final _navigatorKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  String get initialRoute => '/products';

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/products':
        return _preparePage(makeProductsPage());
        break;
      case '/people':
        return _preparePage(makePeoplePage());
        break;
      default:
        return null;
    }
  }

  Future<dynamic> toNamed(String routeName, {Object arguments}) async {
    return _navigatorKey.currentState.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> toReplacementNamed(String routeName,
      {Object arguments}) async {
    return _navigatorKey.currentState.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  bool goBack() {
    return _navigatorKey.currentState.canPop();
  }

  PageRouteBuilder _preparePage(Widget page) => PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
      );
}
