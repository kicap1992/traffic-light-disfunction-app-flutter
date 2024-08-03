import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:traffic_light/app/app.router.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.logger.dart';

class TheIndexViewModel extends IndexTrackingViewModel {
  final log = getLogger('TheIndexViewModel');
  final _navigationService = locator<NavigationService>();

  final _bottomNavBarList = [
    {
      'name': 'Status Traffic Light',
      'icon': Icons.list_alt_outlined,
      'header': 'Status Traffic Light',
    },
    {
      'name': 'Profil Peneliti',
      'icon': Icons.person_outline,
      'header': 'Profil Peneliti',
    },
  ];

  List<Map<String, dynamic>> get bottomNavBarList => _bottomNavBarList;

  final List<String> _views = [
    TheIndexViewRoutes.statusLampuView,
    TheIndexViewRoutes.profilView,
  ];

  String header = 'Status Lampu';

  Future<void> init() async {}

  void handleNavigation(int index) {
    log.d("handleNavigation: $index");
    log.d("currentIndex: $currentIndex");

    if (currentIndex == index) return;

    setIndex(index);
    header = _bottomNavBarList[index]['header'] as String;
    _navigationService.navigateTo(
      _views[index],
      id: 3,
    );
  }
}
