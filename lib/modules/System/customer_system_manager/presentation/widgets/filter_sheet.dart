import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../pages/customer_manager.dart';
import '../../../../../core/resources/routes.dart';
import '../../../../../core/utils/general_button.dart';
import '../../../../../core/resources/values_manager.dart';
import '../../../../../core/resources/enums_manager.dart';
import '../../../../../core/resources/fonts_manager.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/strings_mangager.dart';

class FilterSheet extends StatelessWidget {
  const FilterSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DoubleManager.d_16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            StringsManager.filterCustomers,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: ColorsManager.swatchBlue,
                  fontSize: FontsSize.s18,
                ),
          ),
          GeneralButton(
              buttonText: SubmissionStatus.approved.name,
              function: () {
                filter = SubmissionStatus.approved;
                Fluttertoast.showToast(msg: 'filtered by Approved');
                Navigator.of(context)
                    .pushReplacementNamed(Routes.customerManagerScreenKey);
              }),
          GeneralButton(
              buttonText: SubmissionStatus.rejected.name,
              function: () {
                filter = SubmissionStatus.rejected;
                Fluttertoast.showToast(msg: 'filtered by Rejected');
                Navigator.of(context)
                    .pushReplacementNamed(Routes.customerManagerScreenKey);
              }),
          GeneralButton(
              buttonText: SubmissionStatus.draft.name,
              function: () {
                filter = SubmissionStatus.draft;
                Fluttertoast.showToast(msg: 'filtered by Draft');
                Navigator.of(context)
                    .pushReplacementNamed(Routes.customerManagerScreenKey);
              }),
        ],
      ),
    );
  }
}
