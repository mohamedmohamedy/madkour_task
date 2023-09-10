import 'package:flutter/material.dart';

import '../widgets/filter_sheet.dart';
import '../../../common_utils/utils/welcom_section.dart';
import '../../../../../core/resources/images_paths.dart';
import '../../../../../core/resources/enums_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import '../../../common_utils/utils/cusotm_list_widget.dart';
import '../../../common_utils/utils/customers_dummy_data.dart';

SubmissionStatus? filter;

class CustomerManagerScreen extends StatelessWidget {
  const CustomerManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List filteredCustomerData = customersDummyData
        .where((customer) => filter == null || customer.status == filter)
        .toList();
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(DoubleManager.d_80),
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: DoubleManager.d_20, vertical: DoubleManager.d_10),
              child: WelcomeSection(
                name: 'Customer Service Manager',
                image: ImagesPaths.managerAvatar,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(DoubleManager.d_8),
          child: ListView.builder(
            itemCount: filteredCustomerData.length,
            itemBuilder: (context, index) => CustomListCard(
              name: filteredCustomerData[index].name,
              leftIcon: Icons.email_outlined,
              leftText: filteredCustomerData[index].email,
              rightIcon: Icons.location_city,
              rightText: filteredCustomerData[index].address,
              status: filteredCustomerData[index].status,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => showModalBottomSheet(
                context: context, builder: (context) => const FilterSheet()),
            child: const Icon(Icons.search)),
      ),
    );
  }
}
