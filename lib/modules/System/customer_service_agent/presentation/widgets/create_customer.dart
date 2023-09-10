import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:madkour_task/core/resources/enums_manager.dart';
import 'package:madkour_task/modules/System/common_utils/utils/customers_dummy_data.dart';

import '../../../../../core/resources/routes.dart';
import '../../../common_utils/entities/customer.dart';
import '../../../../../core/utils/general_button.dart';
import '../../../../../core/resources/fonts_manager.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../common_utils/utils/validation_method.dart';
import '../../../../../core/resources/strings_mangager.dart';
import '../../../common_utils/utils/generic_text_field.dart';

class CreateCustomerSheetForm extends StatefulWidget {
  const CreateCustomerSheetForm({super.key});

  @override
  State<CreateCustomerSheetForm> createState() =>
      _CreateCustomerSheetFormState();
}

class _CreateCustomerSheetFormState extends State<CreateCustomerSheetForm> {
  late TextEditingController nameController, emailController, addressController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    addressController = TextEditingController();
    emailController = TextEditingController();
    nameController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    addressController.dispose();
    emailController.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              StringsManager.createNewCustomer,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: ColorsManager.swatchBlue,
                    fontSize: FontsSize.s18,
                  ),
            ),
            GenericTextField(
              label: StringsManager.name,
              hint: StringsManager.enterUserName,
              validator: CommonSystemUtils.validationMethod,
              controller: nameController,
              icon: Icons.person,
            ),
            GenericTextField(
              hint: StringsManager.enterUserEmail,
              label: StringsManager.email,
              controller: emailController,
              validator: CommonSystemUtils.validationMethod,
              icon: Icons.email,
            ),
            GenericTextField(
              hint: StringsManager.enterUserAddress,
              controller: addressController,
              label: StringsManager.address,
              validator: CommonSystemUtils.validationMethod,
              icon: Icons.add_business,
            ),
            GeneralButton(
              buttonText: StringsManager.createCustomer,
              function: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();

                  final newCustomer = Customer(
                    name: nameController.text,
                    email: emailController.text,
                    address: addressController.text,
                    agent: 'user1',
                    status: SubmissionStatus.draft,
                  );
                  customersDummyData.add(newCustomer);
                  Fluttertoast.showToast(
                      msg: StringsManager.addedCustomerSuccessfully);
                  Navigator.of(context)
                      .pushReplacementNamed(Routes.customerAgentScreenKey);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
