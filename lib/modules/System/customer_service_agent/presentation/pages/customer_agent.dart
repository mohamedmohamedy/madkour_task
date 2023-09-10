import 'package:flutter/material.dart';


import '../widgets/create_customer.dart';
import '../../../../../core/resources/images_paths.dart';
import '../../../common_utils/utils/welcom_section.dart';
import '../../../../../core/resources/values_manager.dart';
import '../../../common_utils/utils/cusotm_list_widget.dart';
import '../../../common_utils/utils/floating_with_sheet.dart';
import '../../../common_utils/utils/customers_dummy_data.dart';

class CustomerAgentScreen extends StatelessWidget {
  const CustomerAgentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(DoubleManager.d_80),
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: DoubleManager.d_20, vertical: DoubleManager.d_10),
              child: WelcomeSection(
                name: 'Customer Agent 1',
                image: ImagesPaths.userAvatar,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: customersDummyData.length,
            itemBuilder: (context, index) {
              if (customersDummyData[index].agent == 'user1') {
                return CustomListCard(
                  name: customersDummyData[index].name,
                  leftIcon: Icons.email_outlined,
                  leftText: customersDummyData[index].email,
                  rightIcon: Icons.location_city,
                  rightText: customersDummyData[index].address,
                  status: customersDummyData[index].status,
                );
              }
              return const SizedBox();
            },
          ),
        ),
        floatingActionButton: const FloatingButtonForBottomSheet(
          creationForm: CreateCustomerSheetForm(),
        ),
      ),
    );
  }
}
