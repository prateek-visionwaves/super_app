import 'package:flutter/cupertino.dart';

@immutable
class MiniApp {
  final String title;
  final String iconUrl;
  final String version;
  final String appUrl;
  final String? description;

  const MiniApp(
      {required this.title,
      required this.iconUrl,
      required this.version,
      required this.appUrl,
      this.description});

  MiniApp copyWith(
      {String? title,
      String? iconUrl,
      String? version,
      String? appUrl,
      String? description}) {
    return MiniApp(
        title: title ?? this.title,
        iconUrl: iconUrl ?? this.iconUrl,
        version: version ?? this.version,
        appUrl: appUrl ?? this.appUrl,
        description: description ?? this.description);
  }
}
