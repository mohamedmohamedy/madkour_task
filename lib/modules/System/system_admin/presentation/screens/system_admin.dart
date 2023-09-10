import 'package:flutter/material.dart';

import '../widgets/user_widget.dart';
import '../widgets/create_user_sheet.dart';
import '../../data/datasources/users_dummy_data.dart';
import '../../../../../core/resources/values_manager.dart';
import '../../../../../core/resources/strings_mangager.dart';
import '../../../common_utils/utils/floating_with_sheet.dart';

class SystemAdminScreen extends StatefulWidget {
  const SystemAdminScreen({super.key});

  @override
  State<SystemAdminScreen> createState() => _SystemAdminScreenState();
}

class _SystemAdminScreenState extends State<SystemAdminScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsManager.systemAdmin),
        elevation: DoubleManager.d_0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => UserWidget(
          title: usersDummyList[index].name,
          subtitle: usersDummyList[index].role.name,
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: usersDummyList.length,
      ),
      floatingActionButton: const FloatingButtonForBottomSheet(
        creationForm: CreateUserSheetForm(),
      ),
    );
  }
}

