import '../presenters/presenters.dart';
import '../routers/routers.dart';
import '../ui/ui.dart';

IHomePresenter makeGetxHomePresenter() {
  return GetxHomePresenter(router: HomeRouter());
}
