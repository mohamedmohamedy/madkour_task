import 'package:flutter/material.dart';
import 'package:madkour_task/core/resources/routes.dart';
import 'package:madkour_task/core/utils/general_button.dart';

import '../../../core/resources/strings_mangager.dart';
import '../../../core/resources/values_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsManager.homeScreenTitle),
        elevation: DoubleManager.d_0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DoubleManager.d_20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              StringsManager.chooseTestCase,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            GeneralButton(
                buttonText: StringsManager.systemAdmin,
                function: () => Navigator.of(context)
                    .pushNamed(Routes.systemAdminScreenKey)),
            GeneralButton(
                buttonText: StringsManager.customerServiceAgent,
                function: () => Navigator.of(context)
                    .pushNamed(Routes.customerAgentScreenKey)),
            GeneralButton(
                buttonText: StringsManager.customerServiceManager,
                function: () => Navigator.of(context)
                    .pushNamed(Routes.customerManagerScreenKey)),
          ],
        ),
      ),
    );
  }
}
