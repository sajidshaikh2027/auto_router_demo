import '../../utils/exports.dart';

class RoleBaseGuard extends AutoRouteGuard {
  final UserRole userRole;

  RoleBaseGuard(this.userRole);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    print("resolver- :${resolver.routeName} , router: ${router.activeGuardObserver}");

    print("userRole.name- ${userRole.name}");
    if (userRole.name == 'user') {
      resolver.next(false); // User is an admin, allow navigation
    } else if (userRole.name == 'guest') {
      resolver.next(true); // U
    } else {
      router.push(HomeRoute());
    }
  }
}
