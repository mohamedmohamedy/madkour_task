import 'package:flutter/material.dart';

import '../../../../../core/resources/enums_manager.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../common_utils/utils/validation_method.dart';
import '../../../../../core/resources/strings_mangager.dart';

class SelectUserRoleDropDown extends StatefulWidget {
  final Function(String value) chosenValue;
  const SelectUserRoleDropDown({
    super.key,
    required this.chosenValue,
  });

  @override
  State<SelectUserRoleDropDown> createState() => _SelectUserRoleDropDownState();
}

class _SelectUserRoleDropDownState extends State<SelectUserRoleDropDown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          fillColor: ColorsManager.mainWhiteColor,
          hintText: StringsManager.selectUserRole,
          labelText: StringsManager.role,
          suffixIcon: Icon(Icons.brightness_5_rounded),
        ),
        validator: CommonSystemUtils.validationMethod,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: ColorsManager.mainMadkourColor),
        items: [UserType.agent.name, UserType.manager.name]
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) => setState(() {
              selectedValue = value;
              widget.chosenValue(selectedValue!);
            }));
  }
}
