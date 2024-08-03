import 'package:traffic_light/app/core/custom_base_view_model.dart';

import '../../../../app/app.logger.dart';

class StatusLampuViewModel extends CustomBaseViewModel {
  final log = getLogger('StatusLampuViewModel');
  String plnStatus = "....";
  int strLength = 0;
  Future<void> init() async {
    socketIoClient.on('datanya', (data) {
      // log.d(data);
      String rmsnya = data['rms'];
      no = data['no'];
      strLength = no!.length;
      light = data['light'];
      pln = data['pln'];
      rms = double.parse(rmsnya);

      log.d(rms);

      if (pln == "") {
        plnStatus = "....";
      } else if (pln == "PLN OFF") {
        plnStatus = "Listrik mati";
      } else if (pln == "PLN ON" && rms! < 0.262) {
        // 0.262 , 0.37
        plnStatus = "Lampu terputus & rusak";
      } else if (pln == "PLN ON" && rms! >= 0.262) {
        plnStatus = "Lampu normal";
      }

      notifyListeners();
    });
  }
}
