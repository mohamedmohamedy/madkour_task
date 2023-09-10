
import 'package:flutter/material.dart';

import '../../../../../core/resources/enums_manager.dart';

class UserWidget extends StatelessWidget {
  final String title, subtitle;
  const UserWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: subtitle == UserType.agent.name
            ? const Icon(Icons.support_agent)
            : const Icon(Icons.manage_accounts_rounded),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}