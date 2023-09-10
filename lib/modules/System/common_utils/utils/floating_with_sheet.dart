import 'package:flutter/material.dart';

class FloatingButtonForBottomSheet extends StatelessWidget {
  final Widget creationForm;
  const FloatingButtonForBottomSheet({
    super.key,
    required this.creationForm,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () => showModalBottomSheet(
            context: context, builder: (context) => creationForm),
        child: const Icon(Icons.add));
  }
}