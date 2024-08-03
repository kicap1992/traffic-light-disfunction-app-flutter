import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './profil_view_model.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfilViewModel>.reactive(
      viewModelBuilder: () => ProfilViewModel(),
      onViewModelReady: (ProfilViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        ProfilViewModel model,
        Widget? child,
      ) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            const Image(
              image: AssetImage("assets/logo.png"),
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.26,
                  child: const Text(
                    'Nama',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                  child: const Text(" : "),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      'LUCKY PRASETIO AY',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.26,
                  child: const Text(
                    'NIM',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                  child: const Text(" : "),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      '217 280 111',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.26,
                  child: const Text(
                    'Pembimbing 1',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                  child: const Text(" : "),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      'Muhammad Basri, ST.,  MT.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.26,
                  child: const Text(
                    'Pembimbing 2',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                  child: const Text(" : "),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      'Ir. Untung Suwardoyo, S.Kom.,MT.IPP',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.26,
                  child: const Text(
                    'Judul',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                  child: const Text(" : "),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      'PROTOTYPE SISTEM MONITORING DISFUNGSI TRAFFIC LIGHT',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
