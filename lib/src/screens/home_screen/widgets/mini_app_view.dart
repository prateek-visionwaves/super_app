import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:super_app/src/core/core.dart';
import 'package:super_app/src/screens/home_screen/providers/mini_app_provider.dart';
import 'package:triton_extensions/triton_extensions.dart';

class MiniAppView extends StatelessWidget {
  final MiniApp miniApp;
  const MiniAppView({super.key, required this.miniApp});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<MiniAppProvider>(context, listen: false).miniApp = miniApp;
        context.pushNamed(AppRoutes.miniAppScreen.name);
      },
      child: SizedBox(
        width: 70,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  miniApp.iconUrl,
                  height: 64,
                  width: 64,
                  fit: BoxFit.cover,
                )),
            8.space,
            Text(
              miniApp.title,
              style: context.textTheme.titleSmall,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
