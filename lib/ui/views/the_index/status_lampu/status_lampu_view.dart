import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:traffic_light/app/themes/app_text.dart';

import './status_lampu_view_model.dart';

class StatusLampuView extends StatelessWidget {
  const StatusLampuView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StatusLampuViewModel>.reactive(
      viewModelBuilder: () => StatusLampuViewModel(),
      onViewModelReady: (StatusLampuViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        StatusLampuViewModel model,
        Widget? child,
      ) {
        // create traffic light using column
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 150,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: model.light == 'Red'
                            ? const Color.fromARGB(255, 249, 8, 8)
                            : Colors.red[100],
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: model.light == 'Yellow'
                            ? const Color.fromARGB(255, 245, 220, 0)
                            : Colors.yellow[100],
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: model.light == 'Green'
                            ? const Color.fromARGB(255, 0, 255, 13)
                            : Colors.green[100],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                model.no == null
                    ? '...'
                    : model.strLength <= 2
                        ? model.no!
                        : "...",
                style: italicTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Current RMS (A) : ${model.rms ?? '...'}',
                style: boldTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Status Traffic Light : ${model.plnStatus}',
                style: boldTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
