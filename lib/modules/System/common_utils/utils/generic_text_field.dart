import 'package:flutter/material.dart';

import '../../../../core/resources/colors_manager.dart';

class GenericTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String hint, label;
  final IconData icon;

  const GenericTextField({
    super.key,
    required this.hint,
    required this.label,
    required this.icon,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        fillColor: ColorsManager.mainWhiteColor,
        hintText: hint,
        labelText: label,
        suffixIcon: Icon(icon),
      ),
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: ColorsManager.swatchBlue,
          ),
    );
  }
}
