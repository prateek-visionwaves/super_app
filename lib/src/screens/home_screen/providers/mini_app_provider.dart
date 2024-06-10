import 'package:flutter/material.dart';
import 'package:super_app/src/core/core.dart';
import 'package:super_app/src/screens/home_screen/services/home_screen_services.dart';

class MiniAppProvider extends ChangeNotifier{
  final HomeScreenServices services = HomeScreenServices();
  MiniApp? _selectedApp;
  List<MiniApp>? _allMiniApps;

  void load(){
    _allMiniApps = services.getAllApps();
    notifyListeners();
  }

  MiniApp? get miniApp => _selectedApp;
  set miniApp(MiniApp? app){
    _selectedApp = app;
    notifyListeners();
  }

  List<MiniApp>? get allApps => _allMiniApps;
}