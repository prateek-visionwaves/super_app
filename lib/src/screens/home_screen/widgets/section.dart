import 'package:flutter/material.dart';
import 'package:super_app/src/shared/shared.dart';
import 'package:triton_extensions/triton_extensions.dart';

class Section extends StatelessWidget {
  final String title;
  final String? action;
  const Section({super.key, required this.title, this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 4.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.textTheme.titleMedium!
                .copyWith(color: AppColors.secondaryTextColor),
          ),
          if (action != null) TextButton(onPressed: () {}, child: Text(action!))
        ],
      ),
    );
  }
}
