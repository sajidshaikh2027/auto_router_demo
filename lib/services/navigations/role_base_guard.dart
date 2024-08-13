import '../../utils/exports.dart';

class RoleBaseGuard extends AutoRouteGuard {
  final UserRole userRole;

  RoleBaseGuard(this.userRole);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {

    print("resolver- :${resolver.routeName} , routerisResolved: ${resolver.isResolved}");
    print("userRole.name- ${userRole.name}");

    if (userRole.name == 'user') {
      resolver.next(true); //allow the navigation to continue
      // resolver.nextOrBack(); //checks if the current navigation can be resolved
      // resolver.redirect( NonAdminRoute()); //to redirect the user to a different route
      // resolver.redirect( const RouteA()); //to redirect the user to a different route
      // resolver.resolveNext(true,reevaluateNext: true); //to resolve the navigation and proceed to the next route in the stack
    } else if (userRole.name == 'guest') {
      resolver.next(true); // // User is an admin, allow navigation
    } else {
      router.push(const HomeRoute());
    }
  }
}
