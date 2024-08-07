// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:auto_router_demo/services/navigations/my_app_router.dart'
    as _i3;
import 'package:auto_router_demo/ui/account/account_details_page.dart' as _i1;
import 'package:auto_router_demo/ui/account/account_page.dart' as _i2;
import 'package:auto_router_demo/ui/dashboard.dart' as _i5;
import 'package:auto_router_demo/ui/home/home_page.dart' as _i6;
import 'package:auto_router_demo/ui/home/home_page_details.dart' as _i18;
import 'package:auto_router_demo/ui/login/login_page.dart' as _i7;
import 'package:auto_router_demo/ui/page_not_found/page_not_found.dart' as _i8;
import 'package:auto_router_demo/ui/settings/setting_page.dart' as _i16;
import 'package:auto_router_demo/ui/settings/tabs/chat_page.dart' as _i4;
import 'package:auto_router_demo/ui/settings/tabs/pageview/page_view_one.dart'
    as _i9;
import 'package:auto_router_demo/ui/settings/tabs/status_page.dart' as _i17;
import 'package:auto_router_demo/ui/start_screens/navigation_with_argument/screen_details.dart'
    as _i13;
import 'package:auto_router_demo/ui/start_screens/navigation_with_argument/screen_navigation_home.dart'
    as _i15;
import 'package:auto_router_demo/ui/start_screens/screen_home.dart' as _i14;
import 'package:auto_router_demo/ui/start_screens/simple_navigation/screen_a.dart'
    as _i10;
import 'package:auto_router_demo/ui/start_screens/simple_navigation/screen_b.dart'
    as _i11;
import 'package:auto_router_demo/ui/start_screens/simple_navigation/screen_c.dart'
    as _i12;
import 'package:auto_router_demo/utils/exports.dart' as _i21;
import 'package:flutter/material.dart' as _i20;

abstract class $MyAppRouter extends _i19.RootStackRouter {
  $MyAppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    AccountDetailsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountDetailsPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AccountPage(),
      );
    },
    AccountTabsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AccountTabsPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChatPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Dashboard(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    HomeWithBottomRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeWithBottomPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    RouteNotFound.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PageNotFound(),
      );
    },
    RouteViewOne.name: (routeData) {
      final args = routeData.argsAs<RouteViewOneArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.PageViewOne(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
      );
    },
    RouteA.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ScreenA(),
      );
    },
    RouteB.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ScreenB(),
      );
    },
    RouteC.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ScreenC(),
      );
    },
    RouteDetails.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<RouteDetailsArgs>(
          orElse: () => RouteDetailsArgs(
                id: pathParams.optString('id'),
                empNo: queryParams.optString('emp_no'),
                name: queryParams.optString('name'),
              ));
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.ScreenDetails(
          key: args.key,
          id: args.id,
          empNo: args.empNo,
          name: args.name,
        ),
      );
    },
    RouteHome.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ScreenHome(),
      );
    },
    RouteNavigationHome.name: (routeData) {
      final args = routeData.argsAs<RouteNavigationHomeArgs>(
          orElse: () => const RouteNavigationHomeArgs());
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.ScreenNavigationHome(key: args.key),
      );
    },
    SettingRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SettingPage(),
      );
    },
    StatusRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.StatusPage(),
      );
    },
    UserDetails.name: (routeData) {
      final args = routeData.argsAs<UserDetailsArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.UserDetails(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountDetailsPage]
class AccountDetailsRoute extends _i19.PageRouteInfo<void> {
  const AccountDetailsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AccountDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountDetailsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AccountPage]
class AccountRoute extends _i19.PageRouteInfo<void> {
  const AccountRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AccountTabsPage]
class AccountTabsRoute extends _i19.PageRouteInfo<void> {
  const AccountTabsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AccountTabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountTabsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChatPage]
class ChatRoute extends _i19.PageRouteInfo<void> {
  const ChatRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Dashboard]
class Dashboard extends _i19.PageRouteInfo<void> {
  const Dashboard({List<_i19.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeWithBottomPage]
class HomeWithBottomRoute extends _i19.PageRouteInfo<void> {
  const HomeWithBottomRoute({List<_i19.PageRouteInfo>? children})
      : super(
          HomeWithBottomRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeWithBottomRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PageNotFound]
class RouteNotFound extends _i19.PageRouteInfo<void> {
  const RouteNotFound({List<_i19.PageRouteInfo>? children})
      : super(
          RouteNotFound.name,
          initialChildren: children,
        );

  static const String name = 'RouteNotFound';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PageViewOne]
class RouteViewOne extends _i19.PageRouteInfo<RouteViewOneArgs> {
  RouteViewOne({
    _i20.Key? key,
    required String title,
    required String description,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          RouteViewOne.name,
          args: RouteViewOneArgs(
            key: key,
            title: title,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'RouteViewOne';

  static const _i19.PageInfo<RouteViewOneArgs> page =
      _i19.PageInfo<RouteViewOneArgs>(name);
}

class RouteViewOneArgs {
  const RouteViewOneArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i20.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'RouteViewOneArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [_i10.ScreenA]
class RouteA extends _i19.PageRouteInfo<void> {
  const RouteA({List<_i19.PageRouteInfo>? children})
      : super(
          RouteA.name,
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ScreenB]
class RouteB extends _i19.PageRouteInfo<void> {
  const RouteB({List<_i19.PageRouteInfo>? children})
      : super(
          RouteB.name,
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ScreenC]
class RouteC extends _i19.PageRouteInfo<void> {
  const RouteC({List<_i19.PageRouteInfo>? children})
      : super(
          RouteC.name,
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ScreenDetails]
class RouteDetails extends _i19.PageRouteInfo<RouteDetailsArgs> {
  RouteDetails({
    _i20.Key? key,
    String? id,
    String? empNo,
    String? name,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          RouteDetails.name,
          args: RouteDetailsArgs(
            key: key,
            id: id,
            empNo: empNo,
            name: name,
          ),
          rawPathParams: {'id': id},
          rawQueryParams: {
            'emp_no': empNo,
            'name': name,
          },
          initialChildren: children,
        );

  static const String name = 'RouteDetails';

  static const _i19.PageInfo<RouteDetailsArgs> page =
      _i19.PageInfo<RouteDetailsArgs>(name);
}

class RouteDetailsArgs {
  const RouteDetailsArgs({
    this.key,
    this.id,
    this.empNo,
    this.name,
  });

  final _i20.Key? key;

  final String? id;

  final String? empNo;

  final String? name;

  @override
  String toString() {
    return 'RouteDetailsArgs{key: $key, id: $id, empNo: $empNo, name: $name}';
  }
}

/// generated route for
/// [_i14.ScreenHome]
class RouteHome extends _i19.PageRouteInfo<void> {
  const RouteHome({List<_i19.PageRouteInfo>? children})
      : super(
          RouteHome.name,
          initialChildren: children,
        );

  static const String name = 'RouteHome';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ScreenNavigationHome]
class RouteNavigationHome extends _i19.PageRouteInfo<RouteNavigationHomeArgs> {
  RouteNavigationHome({
    _i21.Key? key,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          RouteNavigationHome.name,
          args: RouteNavigationHomeArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RouteNavigationHome';

  static const _i19.PageInfo<RouteNavigationHomeArgs> page =
      _i19.PageInfo<RouteNavigationHomeArgs>(name);
}

class RouteNavigationHomeArgs {
  const RouteNavigationHomeArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'RouteNavigationHomeArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.SettingPage]
class SettingRoute extends _i19.PageRouteInfo<void> {
  const SettingRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i17.StatusPage]
class StatusRoute extends _i19.PageRouteInfo<void> {
  const StatusRoute({List<_i19.PageRouteInfo>? children})
      : super(
          StatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatusRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i18.UserDetails]
class UserDetails extends _i19.PageRouteInfo<UserDetailsArgs> {
  UserDetails({
    _i21.Key? key,
    required _i21.Datum user,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          UserDetails.name,
          args: UserDetailsArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserDetails';

  static const _i19.PageInfo<UserDetailsArgs> page =
      _i19.PageInfo<UserDetailsArgs>(name);
}

class UserDetailsArgs {
  const UserDetailsArgs({
    this.key,
    required this.user,
  });

  final _i21.Key? key;

  final _i21.Datum user;

  @override
  String toString() {
    return 'UserDetailsArgs{key: $key, user: $user}';
  }
}
