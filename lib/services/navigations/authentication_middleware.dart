import '../../utils/exports.dart';



class AuthenticationMiddleWare extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    var isLogin = SharedPref.getBool("isLoggedInKey", false);

    print("User logged in status: $isLogin");
    // Allow navigation only if the user is logged in
    if (isLogin) {
      print("User is logged in. Proceeding to the next route.");
      resolver.redirect(const Dashboard());
    } else {
      print("User is not logged in.");
      if (resolver.route.name != LoginRoute.name) {
        print("Redirecting to LoginRoute.");
        resolver.redirect(const LoginRoute());
      } else {
        print("Already on LoginRoute. Proceeding.");
        resolver.next(true); // Allow to proceed to LoginRoute
      }
    }
  }
}
