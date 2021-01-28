import 'package:meta/meta.dart';

import '../../../services/services.dart';
import '../presenters/presenters.dart';
import '../ui/ui.dart';

ISplashPresenter makeGetxSplashPresenter({@required IRoute routerManger}) {
  return GetxSplashPresenter(router: routerManger);
}
