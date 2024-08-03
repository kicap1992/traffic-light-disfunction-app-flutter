import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/themes/app_text.dart';
import './splash_screen_view_model.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashScreenViewModel>.nonReactive(
      viewModelBuilder: () => SplashScreenViewModel(),
      onViewModelReady: (SplashScreenViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        SplashScreenViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          // backgroundColor: mainColor,
          body: Column(
            children: [
              const SizedBox(),
              Expanded(
                child: Center(
                  // show the logo.png
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Image(
                        image: AssetImage("assets/logo.png"),
                        width: 200,
                        height: 200,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Disfungsi Traffic Light",
                        style: boldTextStyle.copyWith(
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "LUCKY PRASETIO AY",
                textAlign: TextAlign.center,
                style: boldTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "217 280 111",
                textAlign: TextAlign.center,
                style: italicTextStyle,
              ),
              const SizedBox(height: 15),
            ],
          ),
        );
      },
    );
  }
}
