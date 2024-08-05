import '../../utils/exports.dart';

 class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {}

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print('did replace :${newRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    print('did pop :${route.settings.name}');

    /*print(route.settings);
    if(route.settings.name == "UserDetails"){
      print("userdetails");

    }*/
    super.didPop(route, previousRoute);
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('Tab route re-visited: ${route.name}');
  }
}
