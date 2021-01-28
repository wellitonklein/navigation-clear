import 'package:flutter/material.dart';

import 'services/services.dart';

class AppWidget extends StatelessWidget {
  final IRoute _router;

  const AppWidget({@required IRoute router}) : _router = router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Clear',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      navigatorKey: _router.navigatorKey,
      initialRoute: _router.initialRoute,
      onGenerateRoute: _router.onGenerateRoute,
    );
  }
}
