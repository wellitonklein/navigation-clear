import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import '../../../services/services.dart';
import '../ui/ui.dart';

class GetxHomePresenter implements IHomePresenter {
  final IRoute router;

  GetxHomePresenter({@required this.router});

  void goToPeople() async {
    await router.toReplacementNamed('/people');
  }

  void goToProducts() async {
    await router.toReplacementNamed('/products');
  }

  Widget get navigatorWidget => Navigator(
        key: router.navigatorKey,
        initialRoute: router.initialRoute,
        onGenerateRoute: router.onGenerateRoute,
      );
}
