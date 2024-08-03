import '../../../app/app.logger.dart';
import '../../../app/app.router.dart';
import '../../../app/core/custom_base_view_model.dart';

class SplashScreenViewModel extends CustomBaseViewModel {
  final log = getLogger('SplashScreenViewModel');
  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    // navigate to login page
    // ignore: use_build_context_synchronously
    socketIoClient.init();

    navigationService.replaceWith(Routes.theIndexView);
  }
}
