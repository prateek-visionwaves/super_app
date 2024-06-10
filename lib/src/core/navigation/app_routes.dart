enum AppRoutes{
  authScreen('auth', '/'),
  homeScreen('home', '/home'),
  miniAppScreen('mini-app', 'mini-app');

  const AppRoutes(this.name, this.path);
  final String path;
  final String name;
}