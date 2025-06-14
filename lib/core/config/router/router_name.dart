class RoutesName {
  static RoutesGen get login => const RoutesGen('login');
  static RoutesGen get register => const RoutesGen('register');
  static RoutesGen get home => const RoutesGen('home', '');
  static RoutesGen get screenOne => const RoutesGen('screenOne');
  static RoutesGen get welcome => const RoutesGen('welcome');
}

class RoutesGen {
  final String value;
  final String? pathValue;
  const RoutesGen(this.value, [this.pathValue]);

  String get name => value;
  String get path => '/${pathValue ?? value}';
}
