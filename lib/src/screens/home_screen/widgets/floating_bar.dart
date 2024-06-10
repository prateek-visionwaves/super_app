import 'package:flutter/material.dart';
import 'package:triton_extensions/triton_extensions.dart';

class FloatingBar extends StatelessWidget {
  const FloatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 8.padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: context.colorScheme.onBackground.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 4),
          ],
          color: context.colorScheme.surface,
          shape: BoxShape.rectangle),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
    );
  }
}
