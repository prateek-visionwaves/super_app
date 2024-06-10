import 'package:flutter/material.dart';
import 'package:super_app/src/screens/home_screen/services/home_screen_services.dart';
import 'package:super_app/src/screens/home_screen/widgets/apps_view.dart';
import 'package:super_app/src/screens/home_screen/widgets/floating_bar.dart';
import 'package:super_app/src/screens/home_screen/widgets/section.dart';
import 'package:super_app/src/shared/shared.dart';
import 'package:triton_extensions/triton_extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: 8.padding,
          child: Stack(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person,
                            size: 24,
                          ),
                          style: IconButton.styleFrom(
                            backgroundColor: context.colorScheme.primary,
                            foregroundColor: context.colorScheme.onPrimary,
                          ),
                        ),
                        8.space,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              style: context.textTheme.titleSmall!.copyWith(
                                  color: AppColors.secondaryTextColor),
                            ),
                            Text(
                              AppStrings.appTitle,
                              style: context.textTheme.headlineSmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            4.space,
                          ],
                        ),
                        const Spacer(),
                        Badge(
                            label: const Text('2'),
                            child: IconButton(
                                style: IconButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        side: BorderSide(
                                            color: context
                                                .colorScheme.onBackground
                                                .withOpacity(0.3)))),
                                onPressed: () {},
                                icon: const Icon(Icons.notifications)))
                      ],
                    ),
                  ),
                  16.space,
                  const Section(
                    title: 'Mini Apps',
                    action: 'View All',
                  ),
                  MiniAppsGrid(miniApps: HomeScreenServices().getAllApps()),
                ],
              ),
              const Align(
                  alignment: Alignment.bottomCenter, child: FloatingBar())
            ],
          ),
        ),
      ),
    );
  }
}
