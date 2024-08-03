import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked_annotations.dart';

import '../services/http_services.dart';
import '../services/my_easyloading.dart';
import '../services/my_socket_io_client.dart';
import '../services/other_function.dart';
import '../ui/views/splash_screen/splash_screen_view.dart';
import '../ui/views/the_index/profil/profil_view.dart';
import '../ui/views/the_index/status_lampu/status_lampu_view.dart';
import '../ui/views/the_index/the_index_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreenView, initial: true),
    MaterialRoute(
      page: TheIndexView,
      children: [
        MaterialRoute(page: StatusLampuView),
        MaterialRoute(page: ProfilView),
      ],
    ),
  ],
  // dialogs: [
  //   StackedDialog(classType: ScanRfidDialogView),
  //   StackedDialog(classType: TopUpSaldoView),
  //   StackedDialog(classType: EditTempatSewaDialogView),
  //   StackedDialog(classType: EditPenyewaDialogView),
  //   StackedDialog(classType: DaftarPenyewaView),
  //   StackedDialog(classType: AddTempatSewaView),
  // ],
  // bottomsheets: [
  //   StackedBottomsheet(classType: DetailLogHistoryView),
  // ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: BottomSheetService),
    //

    LazySingleton(classType: MyEasyLoading),
    LazySingleton(classType: MyHttpServices),
    LazySingleton(classType: OtherFunction),
    LazySingleton(classType: MySocketIoClient),
    // LazySingleton(classType: RetributorIndexView),
  ],
  logger: StackedLogger(),
)
class App {}
