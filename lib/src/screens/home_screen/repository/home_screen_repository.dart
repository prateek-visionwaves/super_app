import 'package:super_app/src/core/core.dart';

abstract class HomeScreenRepository{
  List<MiniApp> getAllApps();
  List<MiniApp> getAppsByCategory(String category);
}