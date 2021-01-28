import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import '../ui/ui.dart';
import 'home_presenter_factory.dart';

Widget makeHomePage({@required String userId}) {
  return HomePage(userId: userId, presenter: makeGetxHomePresenter());
}
