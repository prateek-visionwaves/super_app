import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:super_app/src/core/permissions/webview_permission_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MiniAppScreen extends StatelessWidget {
  const MiniAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final miniApp = Provider.of<MiniAppProvider>(context).miniApp!;
    final miniAppWebViewController = WebViewController(
        onPermissionRequest: WebViewPermissionManager().requestPermission);
    miniAppWebViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
    miniAppWebViewController.loadRequest(Uri.parse('https://www.oration.ai/playground/aramco'));

    return PopScope(
      canPop: false,
      onPopInvoked: (val) async {
        miniAppWebViewController.canGoBack().then((value) {
          if (value) {
            miniAppWebViewController.goBack();
          } else {
            context.pop();
          }
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Oration AI'),
        ),
        body: WebViewWidget(
          controller: miniAppWebViewController,
        ),
      ),
    );
  }
}
