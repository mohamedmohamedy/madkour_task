import 'package:flutter/material.dart';

import '../../../../core/resources/fonts_manager.dart';
import '../../../../core/resources/enums_manager.dart';
import '../../../../core/resources/colors_manager.dart';
import '../../../../core/resources/radius_manager.dart';
import '../../../../core/resources/values_manager.dart';

class CustomListCard extends StatelessWidget {
  final String name, rightText, leftText;
  final IconData rightIcon, leftIcon;
  final SubmissionStatus status;

  const CustomListCard({
    Key? key,
    required this.name,
    required this.status,
    required this.rightIcon,
    required this.leftIcon,
    required this.rightText,
    required this.leftText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: DoubleManager.d_4),
      decoration: BoxDecoration(
        borderRadius: RadiusManager.borderAll12,
        border: Border.all(color: Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 4,
            spreadRadius: 0.5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Card(
        elevation: DoubleManager.d_0,
        shape: RoundedRectangleBorder(
          borderRadius: RadiusManager.borderAll12,
        ),
        child: ClipRRect(
          borderRadius: RadiusManager.borderAll12,
          child: InkWell(
            borderRadius: RadiusManager.borderAll12,
            child: Ink(
              padding: const EdgeInsets.all(DoubleManager.d_15),
              decoration: BoxDecoration(
                borderRadius: RadiusManager.borderAll12,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(name,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: ColorsManager.swatchBlue)),
                        ),
                        Container(
                          width: DoubleManager.d_100,
                          padding: const EdgeInsets.all(DoubleManager.d_5),
                          decoration: BoxDecoration(
                            color: status == SubmissionStatus.rejected
                                ? ColorsManager.gRed
                                : ColorsManager.gGreen,
                            borderRadius: RadiusManager.borderAll12,
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(status.name),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: DoubleManager.d_10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                leftIcon,
                                color: ColorsManager.swatchBlue,
                              ),
                              const SizedBox(width: DoubleManager.d_5),
                              Flexible(
                                child: Text(leftText,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: ColorsManager.sBlack,
                                          fontSize: FontsSize.s12,
                                        )),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                rightIcon,
                                color: ColorsManager.swatchBlue,
                              ),
                              const SizedBox(width: DoubleManager.d_5),
                              Flexible(
                                child: Text(
                                  rightText,
                                  overflow: TextOverflow.visible,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: ColorsManager.sBlack,
                                        fontSize: FontsSize.s12,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
