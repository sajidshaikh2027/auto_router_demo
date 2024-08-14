// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i30;
import 'package:auto_router_demo/services/navigations/my_app_router.dart'
    as _i3;
import 'package:auto_router_demo/ui/account/account_details_page.dart' as _i1;
import 'package:auto_router_demo/ui/account/account_page.dart' as _i2;
import 'package:auto_router_demo/ui/auto_tabs_scaffold/auto_tabs_page.dart'
    as _i4;
import 'package:auto_router_demo/ui/auto_tabs_scaffold/tab1_page.dart' as _i22;
import 'package:auto_router_demo/ui/auto_tabs_scaffold/tab2_page.dart' as _i24;
import 'package:auto_router_demo/ui/auto_tabs_scaffold/tab3_page.dart' as _i26;
import 'package:auto_router_demo/ui/dashboard.dart' as _i6;
import 'package:auto_router_demo/ui/deep_linking/deep_linking_page.dart' as _i7;
import 'package:auto_router_demo/ui/find_right_router/tab_1_page.dart' as _i23;
import 'package:auto_router_demo/ui/find_right_router/tab_2_page.dart' as _i25;
import 'package:auto_router_demo/ui/find_right_router/user_details_page.dart'
    as _i29;
import 'package:auto_router_demo/ui/find_right_router/user_home_screen.dart'
    as _i27;
import 'package:auto_router_demo/ui/home/home_page.dart' as _i9;
import 'package:auto_router_demo/ui/home/home_page_details.dart' as _i28;
import 'package:auto_router_demo/ui/login/login_page.dart' as _i10;
import 'package:auto_router_demo/ui/navigation_with_argument/screen_details.dart'
    as _i17;
import 'package:auto_router_demo/ui/navigation_with_argument/screen_navigation_home.dart'
    as _i19;
import 'package:auto_router_demo/ui/page_not_found/page_not_found.dart'
    deferred as _i12;
import 'package:auto_router_demo/ui/role_base_guard/guest_page.dart' as _i8;
import 'package:auto_router_demo/ui/role_base_guard/non_admin_page.dart'
    as _i11;
import 'package:auto_router_demo/ui/settings/setting_page.dart' as _i20;
import 'package:auto_router_demo/ui/settings/tabs/chat_page.dart' as _i5;
import 'package:auto_router_demo/ui/settings/tabs/pageview/page_view_one.dart'
    as _i13;
import 'package:auto_router_demo/ui/settings/tabs/status_page.dart' as _i21;
import 'package:auto_router_demo/ui/start_screens/screen_home.dart' as _i18;
import 'package:auto_router_demo/ui/start_screens/simple_navigation/screen_a.dart'
    as _i14;
import 'package:auto_router_demo/ui/start_screens/simple_navigation/screen_b.dart'
    as _i15;
import 'package:auto_router_demo/ui/start_screens/simple_navigation/screen_c.dart'
    as _i16;
import 'package:auto_router_demo/utils/exports.dart' as _i31;
import 'package:flutter/material.dart' as _i32;

abstract class $MyAppRouter extends _i30.RootStackRouter {
  $MyAppRouter({super.navigatorKey});

  @override
  final Map<String, _i30.PageFactory> pagesMap = {
    AccountDetailsRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountDetailsPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AccountPage(),
      );
    },
    AccountTabsRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AccountTabsPage(),
      );
    },
    AutoTabsScaffoldRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AutoTabsScaffoldPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ChatPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Dashboard(),
      );
    },
    DeepLinkingRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DeepLinkingRouteArgs>(
          orElse: () =>
              DeepLinkingRouteArgs(token: pathParams.optString('token')));
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DeepLinkingPage(
          key: args.key,
          token: args.token,
        ),
      );
    },
    GuestRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.GuestPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HomePage(),
      );
    },
    HomeWithBottomPageRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeWithBottomPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.LoginPage(),
      );
    },
    NonAdminRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.NonAdminPage(),
      );
    },
    RouteNotFound.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.DeferredWidget(
          _i12.loadLibrary,
          () => _i12.PageNotFound(),
        ),
      );
    },
    RouteViewOne.name: (routeData) {
      final args = routeData.argsAs<RouteViewOneArgs>();
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.PageViewOne(
          key: args.key,
          title: args.title,
          description: args.description,
        ),
      );
    },
    RouteA.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ScreenA(),
      );
    },
    RouteB.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.WrappedRoute(child: const _i15.ScreenB()),
      );
    },
    RouteC.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.ScreenC(),
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
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.ScreenDetails(
          key: args.key,
          id: args.id,
          empNo: args.empNo,
          name: args.name,
        ),
      );
    },
    RouteHome.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.ScreenHome(),
      );
    },
    RouteNavigationHome.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.ScreenNavigationHome(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SettingPage(),
      );
    },
    StatusRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.StatusPage(),
      );
    },
    Tab1Route.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.Tab1Page(),
      );
    },
    Tab1PageRout.name: (routeData) {
      final args = routeData.argsAs<Tab1PageRoutArgs>(
          orElse: () => const Tab1PageRoutArgs());
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.Tab1Page(
          key: args.key,
          tab1: args.tab1,
        ),
      );
    },
    Tab2Route.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.Tab2Page(),
      );
    },
    Tab2PageRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.Tab2Page(),
      );
    },
    Tab3Route.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.Tab3Page(),
      );
    },
    UserAdminRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UserAdminRouter(),
      );
    },
    UserDashboardPageRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.UserDashboardPage(),
      );
    },
    UserDetails.name: (routeData) {
      final args = routeData.argsAs<UserDetailsArgs>();
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.UserDetails(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<UserDetailsPageRouteArgs>();
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.UserDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UserProfileRouter(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountDetailsPage]
class AccountDetailsRoute extends _i30.PageRouteInfo<void> {
  const AccountDetailsRoute({List<_i30.PageRouteInfo>? children})
      : super(
          AccountDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountDetailsRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AccountPage]
class AccountRoute extends _i30.PageRouteInfo<void> {
  const AccountRoute({List<_i30.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AccountTabsPage]
class AccountTabsRoute extends _i30.PageRouteInfo<void> {
  const AccountTabsRoute({List<_i30.PageRouteInfo>? children})
      : super(
          AccountTabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountTabsRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AutoTabsScaffoldPage]
class AutoTabsScaffoldRoute extends _i30.PageRouteInfo<void> {
  const AutoTabsScaffoldRoute({List<_i30.PageRouteInfo>? children})
      : super(
          AutoTabsScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'AutoTabsScaffoldRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ChatPage]
class ChatRoute extends _i30.PageRouteInfo<void> {
  const ChatRoute({List<_i30.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Dashboard]
class Dashboard extends _i30.PageRouteInfo<void> {
  const Dashboard({List<_i30.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i7.DeepLinkingPage]
class DeepLinkingRoute extends _i30.PageRouteInfo<DeepLinkingRouteArgs> {
  DeepLinkingRoute({
    _i31.Key? key,
    String? token,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          DeepLinkingRoute.name,
          args: DeepLinkingRouteArgs(
            key: key,
            token: token,
          ),
          rawPathParams: {'token': token},
          initialChildren: children,
        );

  static const String name = 'DeepLinkingRoute';

  static const _i30.PageInfo<DeepLinkingRouteArgs> page =
      _i30.PageInfo<DeepLinkingRouteArgs>(name);
}

class DeepLinkingRouteArgs {
  const DeepLinkingRouteArgs({
    this.key,
    this.token,
  });

  final _i31.Key? key;

  final String? token;

  @override
  String toString() {
    return 'DeepLinkingRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [_i8.GuestPage]
class GuestRoute extends _i30.PageRouteInfo<void> {
  const GuestRoute({List<_i30.PageRouteInfo>? children})
      : super(
          GuestRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuestRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HomePage]
class HomeRoute extends _i30.PageRouteInfo<void> {
  const HomeRoute({List<_i30.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeWithBottomPage]
class HomeWithBottomPageRoute extends _i30.PageRouteInfo<void> {
  const HomeWithBottomPageRoute({List<_i30.PageRouteInfo>? children})
      : super(
          HomeWithBottomPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeWithBottomPageRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i10.LoginPage]
class LoginRoute extends _i30.PageRouteInfo<void> {
  const LoginRoute({List<_i30.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NonAdminPage]
class NonAdminRoute extends _i30.PageRouteInfo<void> {
  const NonAdminRoute({List<_i30.PageRouteInfo>? children})
      : super(
          NonAdminRoute.name,
          initialChildren: children,
        );

  static const String name = 'NonAdminRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PageNotFound]
class RouteNotFound extends _i30.PageRouteInfo<void> {
  const RouteNotFound({List<_i30.PageRouteInfo>? children})
      : super(
          RouteNotFound.name,
          initialChildren: children,
        );

  static const String name = 'RouteNotFound';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PageViewOne]
class RouteViewOne extends _i30.PageRouteInfo<RouteViewOneArgs> {
  RouteViewOne({
    _i32.Key? key,
    required String title,
    required String description,
    List<_i30.PageRouteInfo>? children,
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

  static const _i30.PageInfo<RouteViewOneArgs> page =
      _i30.PageInfo<RouteViewOneArgs>(name);
}

class RouteViewOneArgs {
  const RouteViewOneArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i32.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'RouteViewOneArgs{key: $key, title: $title, description: $description}';
  }
}

/// generated route for
/// [_i14.ScreenA]
class RouteA extends _i30.PageRouteInfo<void> {
  const RouteA({List<_i30.PageRouteInfo>? children})
      : super(
          RouteA.name,
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ScreenB]
class RouteB extends _i30.PageRouteInfo<void> {
  const RouteB({List<_i30.PageRouteInfo>? children})
      : super(
          RouteB.name,
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ScreenC]
class RouteC extends _i30.PageRouteInfo<void> {
  const RouteC({List<_i30.PageRouteInfo>? children})
      : super(
          RouteC.name,
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ScreenDetails]
class RouteDetails extends _i30.PageRouteInfo<RouteDetailsArgs> {
  RouteDetails({
    _i32.Key? key,
    String? id,
    String? empNo,
    String? name,
    List<_i30.PageRouteInfo>? children,
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

  static const _i30.PageInfo<RouteDetailsArgs> page =
      _i30.PageInfo<RouteDetailsArgs>(name);
}

class RouteDetailsArgs {
  const RouteDetailsArgs({
    this.key,
    this.id,
    this.empNo,
    this.name,
  });

  final _i32.Key? key;

  final String? id;

  final String? empNo;

  final String? name;

  @override
  String toString() {
    return 'RouteDetailsArgs{key: $key, id: $id, empNo: $empNo, name: $name}';
  }
}

/// generated route for
/// [_i18.ScreenHome]
class RouteHome extends _i30.PageRouteInfo<void> {
  const RouteHome({List<_i30.PageRouteInfo>? children})
      : super(
          RouteHome.name,
          initialChildren: children,
        );

  static const String name = 'RouteHome';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ScreenNavigationHome]
class RouteNavigationHome extends _i30.PageRouteInfo<void> {
  const RouteNavigationHome({List<_i30.PageRouteInfo>? children})
      : super(
          RouteNavigationHome.name,
          initialChildren: children,
        );

  static const String name = 'RouteNavigationHome';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SettingPage]
class SettingRoute extends _i30.PageRouteInfo<void> {
  const SettingRoute({List<_i30.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i21.StatusPage]
class StatusRoute extends _i30.PageRouteInfo<void> {
  const StatusRoute({List<_i30.PageRouteInfo>? children})
      : super(
          StatusRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatusRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i22.Tab1Page]
class Tab1Route extends _i30.PageRouteInfo<void> {
  const Tab1Route({List<_i30.PageRouteInfo>? children})
      : super(
          Tab1Route.name,
          initialChildren: children,
        );

  static const String name = 'Tab1Route';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i23.Tab1Page]
class Tab1PageRout extends _i30.PageRouteInfo<Tab1PageRoutArgs> {
  Tab1PageRout({
    _i31.Key? key,
    String? tab1,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          Tab1PageRout.name,
          args: Tab1PageRoutArgs(
            key: key,
            tab1: tab1,
          ),
          initialChildren: children,
        );

  static const String name = 'Tab1PageRout';

  static const _i30.PageInfo<Tab1PageRoutArgs> page =
      _i30.PageInfo<Tab1PageRoutArgs>(name);
}

class Tab1PageRoutArgs {
  const Tab1PageRoutArgs({
    this.key,
    this.tab1,
  });

  final _i31.Key? key;

  final String? tab1;

  @override
  String toString() {
    return 'Tab1PageRoutArgs{key: $key, tab1: $tab1}';
  }
}

/// generated route for
/// [_i24.Tab2Page]
class Tab2Route extends _i30.PageRouteInfo<void> {
  const Tab2Route({List<_i30.PageRouteInfo>? children})
      : super(
          Tab2Route.name,
          initialChildren: children,
        );

  static const String name = 'Tab2Route';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i25.Tab2Page]
class Tab2PageRoute extends _i30.PageRouteInfo<void> {
  const Tab2PageRoute({List<_i30.PageRouteInfo>? children})
      : super(
          Tab2PageRoute.name,
          initialChildren: children,
        );

  static const String name = 'Tab2PageRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i26.Tab3Page]
class Tab3Route extends _i30.PageRouteInfo<void> {
  const Tab3Route({List<_i30.PageRouteInfo>? children})
      : super(
          Tab3Route.name,
          initialChildren: children,
        );

  static const String name = 'Tab3Route';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UserAdminRouter]
class UserAdminRoute extends _i30.PageRouteInfo<void> {
  const UserAdminRoute({List<_i30.PageRouteInfo>? children})
      : super(
          UserAdminRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAdminRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i27.UserDashboardPage]
class UserDashboardPageRoute extends _i30.PageRouteInfo<void> {
  const UserDashboardPageRoute({List<_i30.PageRouteInfo>? children})
      : super(
          UserDashboardPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserDashboardPageRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i28.UserDetails]
class UserDetails extends _i30.PageRouteInfo<UserDetailsArgs> {
  UserDetails({
    _i31.Key? key,
    required _i31.Datum user,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          UserDetails.name,
          args: UserDetailsArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserDetails';

  static const _i30.PageInfo<UserDetailsArgs> page =
      _i30.PageInfo<UserDetailsArgs>(name);
}

class UserDetailsArgs {
  const UserDetailsArgs({
    this.key,
    required this.user,
  });

  final _i31.Key? key;

  final _i31.Datum user;

  @override
  String toString() {
    return 'UserDetailsArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i29.UserDetailsPage]
class UserDetailsPageRoute
    extends _i30.PageRouteInfo<UserDetailsPageRouteArgs> {
  UserDetailsPageRoute({
    _i31.Key? key,
    required int id,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          UserDetailsPageRoute.name,
          args: UserDetailsPageRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'UserDetailsPageRoute';

  static const _i30.PageInfo<UserDetailsPageRouteArgs> page =
      _i30.PageInfo<UserDetailsPageRouteArgs>(name);
}

class UserDetailsPageRouteArgs {
  const UserDetailsPageRouteArgs({
    this.key,
    required this.id,
  });

  final _i31.Key? key;

  final int id;

  @override
  String toString() {
    return 'UserDetailsPageRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.UserProfileRouter]
class UserProfileRoute extends _i30.PageRouteInfo<void> {
  const UserProfileRoute({List<_i30.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}
