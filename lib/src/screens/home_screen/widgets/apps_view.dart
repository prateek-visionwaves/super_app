import 'package:flutter/material.dart';
import 'package:super_app/src/core/core.dart';
import 'package:super_app/src/screens/home_screen/widgets/mini_app_view.dart';
import 'package:triton_extensions/triton_extensions.dart';

class MiniAppsGrid extends StatelessWidget {
  final List<MiniApp> miniApps;
  const MiniAppsGrid({super.key, required this.miniApps});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 8.padding,
      child: Wrap(
        spacing: 24,
        runSpacing: 24,
        children: miniApps.map((app) => MiniAppView(miniApp: app)).toList(),
      ),
    );
  }
}
