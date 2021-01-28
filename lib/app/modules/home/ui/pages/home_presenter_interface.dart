import 'package:flutter/widgets.dart';

abstract class IHomePresenter {
  void goToProducts();
  void goToPeople();
  Widget get navigatorWidget;
}
