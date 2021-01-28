import 'package:flutter/widgets.dart';

import '../modules/modules.dart';
import '../services/services.dart';

class AppRoute implements IRoute {
  final _navigatorKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  String get initialRoute => '/';

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments as String;

    switch (settings.name) {
      case '/':
        return _preparePage(makeSplashPage(routerManger: this));
        break;
      case '/login':
        return null;
        break;
      case '/home':
        return _preparePage(makeHomePage(userId: arguments));
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
