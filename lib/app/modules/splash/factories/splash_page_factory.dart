import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import '../../../services/services.dart';
import '../ui/ui.dart';
import 'splash_presenter_factory.dart';

Widget makeSplashPage({@required IRoute routerManger}) {
  return SplashPage(
    presenter: makeGetxSplashPresenter(routerManger: routerManger),
  );
}
