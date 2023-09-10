import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'select_user_role.dart';
import '../../domain/entities/user_entity.dart';
import '../../../../../core/resources/routes.dart';
import '../../data/datasources/users_dummy_data.dart';
import '../../../../../core/utils/general_button.dart';
import '../../../../../core/resources/values_manager.dart';
import '../../../../../core/resources/enums_manager.dart';
import '../../../../../core/resources/fonts_manager.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../common_utils/utils/validation_method.dart';
import '../../../../../core/resources/strings_mangager.dart';
import '../../../common_utils/utils/generic_text_field.dart';

class CreateUserSheetForm extends StatefulWidget {
  const CreateUserSheetForm({super.key});

  @override
  State<CreateUserSheetForm> createState() => _CreateUserSheetFormState();
}

class _CreateUserSheetFormState extends State<CreateUserSheetForm> {
  late TextEditingController nameController;
  late GlobalKey<FormState> formKey;
  String? userType;

  @override
  void initState() {
    super.initState();

    nameController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DoubleManager.d_16),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              StringsManager.createNewUser,
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
            SelectUserRoleDropDown(
              chosenValue: (value) => userType = value,
            ),
            GeneralButton(
              buttonText: StringsManager.createUser,
              function: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  final User newUser = User(
                    name: nameController.text,
                    role: UserType.values
                        .firstWhere((element) => element.name == userType),
                  );
                  usersDummyList.add(newUser);
                  Fluttertoast.showToast(
                      msg: StringsManager.addedUserSuccessfully);
                }
                Navigator.of(context)
                    .pushReplacementNamed(Routes.systemAdminScreenKey);
              },
            ),
          ],
        ),
      ),
    );
  }
}
