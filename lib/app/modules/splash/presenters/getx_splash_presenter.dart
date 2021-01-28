import 'package:meta/meta.dart';

import '../../../services/services.dart';
import '../ui/ui.dart';

class GetxSplashPresenter implements ISplashPresenter {
  final IRoute router;

  GetxSplashPresenter({@required this.router});

  void goToHome() async {
    await router.toReplacementNamed(
      '/home',
      arguments: 'Fokushima ${DateTime.now().toIso8601String()}',
    );
  }
}
