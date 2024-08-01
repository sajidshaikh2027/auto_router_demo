// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_router_demo/services/navigations/app_routes.dart' as _i3;
import 'package:auto_router_demo/ui/account_details_page.dart' as _i1;
import 'package:auto_router_demo/ui/account_page.dart' as _i2;
import 'package:auto_router_demo/ui/dashboard.dart' as _i4;
import 'package:auto_router_demo/ui/home_page.dart' as _i6;
import 'package:auto_router_demo/ui/user_details.dart' as _i7;
import 'package:auto_router_demo/ui/wrapper/home_navigation_screen.dart' as _i5;
import 'package:auto_router_demo/utils/exports.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AccountDetailsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountDetailsPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AccountPage(),
      );
    },
    AccountTabsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AccountTabsPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Dashboard(),
      );
    },
    HomeNavigationRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeNavigationScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    UserDetails.name: (routeData) {
      final args = routeData.argsAs<UserDetailsArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.UserDetails(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountDetailsPage]
class AccountDetailsRoute extends _i8.PageRouteInfo<void> {
  const AccountDetailsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AccountDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountDetailsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AccountPage]
class AccountRoute extends _i8.PageRouteInfo<void> {
  const AccountRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AccountTabsPage]
class AccountTabsRoute extends _i8.PageRouteInfo<void> {
  const AccountTabsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AccountTabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountTabsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Dashboard]
class Dashboard extends _i8.PageRouteInfo<void> {
  const Dashboard({List<_i8.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeNavigationScreen]
class HomeNavigationRoute extends _i8.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.UserDetails]
class UserDetails extends _i8.PageRouteInfo<UserDetailsArgs> {
  UserDetails({
    _i9.Key? key,
    required _i9.Datum user,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          UserDetails.name,
          args: UserDetailsArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserDetails';

  static const _i8.PageInfo<UserDetailsArgs> page =
      _i8.PageInfo<UserDetailsArgs>(name);
}

class UserDetailsArgs {
  const UserDetailsArgs({
    this.key,
    required this.user,
  });

  final _i9.Key? key;

  final _i9.Datum user;

  @override
  String toString() {
    return 'UserDetailsArgs{key: $key, user: $user}';
  }
}
