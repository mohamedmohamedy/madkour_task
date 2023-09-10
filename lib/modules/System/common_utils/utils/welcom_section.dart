import 'package:flutter/material.dart';

import '../../../../core/resources/fonts_manager.dart';
import '../../../../core/resources/strings_mangager.dart';
import '../../../../../core/resources/values_manager.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({
    super.key,
    required this.name,
    required this.image,
  });
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: DoubleManager.d_30,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(width: DoubleManager.d_30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(StringsManager.welcome,
                style: Theme.of(context).textTheme.titleLarge),
            Text(
              name,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: FontsSize.s14,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
