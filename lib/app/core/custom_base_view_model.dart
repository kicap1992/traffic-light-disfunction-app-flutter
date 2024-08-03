// import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../services/http_services.dart';
import '../../services/my_easyloading.dart';
import '../../services/my_socket_io_client.dart';
import '../../services/other_function.dart';
// import '../../services/shared_prefs.dart';
import '../app.locator.dart';

class CustomBaseViewModel extends BaseViewModel {
  final dialogService = locator<DialogService>();
  final navigationService = locator<NavigationService>();
  final bottomSheetService = locator<BottomSheetService>();
  final snackbarService = locator<SnackbarService>();
  // final mySharedPrefs = locator<MySharedPrefs>();
  final otherFunction = locator<OtherFunction>();
  final socketIoClient = locator<MySocketIoClient>();
  final httpService = locator<MyHttpServices>();
  final easyLoading = locator<MyEasyLoading>();

  String? no, light, pln;
  double? rms;

  void back() {
    navigationService.back();
  }
}
