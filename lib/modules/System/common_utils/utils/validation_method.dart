import '../../../../core/resources/strings_mangager.dart';

abstract class CommonSystemUtils{
  static String? validationMethod(value) {
    if (value == null || value.isEmpty) {
      return StringsManager.validationMessage;
    }
    return null;
  }
} 