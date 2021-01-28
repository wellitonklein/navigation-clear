import 'package:flutter/widgets.dart';

abstract class IRoute {
  String get initialRoute;
  Route<dynamic> onGenerateRoute(RouteSettings settings);
  GlobalKey<NavigatorState> get navigatorKey;
  Future<dynamic> toNamed(String routeName, {Object arguments});
  Future<dynamic> toReplacementNamed(String routeName, {Object arguments});
  bool goBack();
}
