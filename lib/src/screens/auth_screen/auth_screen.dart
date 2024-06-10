import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:super_app/src/core/core.dart';
import 'package:super_app/src/shared/app_colors.dart';
import 'package:triton_extensions/triton_extensions.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 100,
            left: -40,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: context.colorScheme.primary),
            ),
          ),
          Positioned(
            bottom: 100,
            right: -100,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colorScheme.primary.withOpacity(0.6)),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 60, sigmaX: 60),
            child: Container(),
          ),
          Center(
            child: Padding(
              padding: 16.padding,
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      'https://logolook.net/wp-content/uploads/2022/11/Saudi-Aramco-Logo.png',
                      width: 200,
                    ),
                    Text(
                      'Step into world of seamless interactions',
                      style: context.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.secondaryTextColor),
                    ),
                    16.space,
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Email', prefixIcon: Icon(Icons.email)),
                    ),
                    16.space,
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Password', prefixIcon: Icon(Icons.lock)),
                    ),
                    16.space,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Login',
                          style: context.textTheme.titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        16.space,
                        IconButton(
                            style: IconButton.styleFrom(
                                backgroundColor: context.colorScheme.primary, foregroundColor: context.colorScheme.onPrimary),
                            onPressed: () {
                              context.pushNamed(AppRoutes.homeScreen.name);
                            },
                            icon: const Icon(
                              Icons.arrow_forward,
                              size: 32,
                            ))
                      ],
                    ),
                    TextButton(onPressed: (){}, child: const Text('Do not have an account? Create one'))
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
