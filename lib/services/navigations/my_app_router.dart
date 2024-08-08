import 'package:auto_router_demo/services/navigations/role_base_guard.dart';

import '../../utils/exports.dart';
import 'authentication_middleware.dart';

@AutoRouterConfig()
class MyAppRouter extends $MyAppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RouteHome.page,
          initial: true,
        ),
        AutoRoute(
          page: RouteA.page,
        ),
        AutoRoute(page: RouteB.page),
        CustomRoute(
          page: RouteC.page,
        ),
        AutoRoute(page: RouteNavigationHome.page),
        AutoRoute(
          page: RouteDetails.page,
          path: '/detail_page/:id',
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: AppPath.login,
          guards: [AuthenticationMiddleWare()],
        ),
        CustomRoute(
            page: Dashboard.page,
            path: AppPath.dashboard,
            maintainState: false,
            children: [
              CustomRoute(page: HomeWithBottomPageRoute.page, path: AppPath.home, children: [
                CustomRoute(
                  page: HomeRoute.page,
                ),
                CustomRoute(
                  page: UserDetails.page,
                  transitionsBuilder: TransitionsBuilders.zoomIn,
                ),
              ]),
              CustomRoute(
                page: AccountRoute.page,
                path: AppPath.account,
                maintainState: false,
              ),
              AutoRoute(
                  page: SettingRoute.page,
                  path: AppPath.setting,
                  children: [
                    AutoRoute(page: ChatRoute.page, children: [
                      AutoRoute(
                          page: RouteViewOne.page,
                          path: 'pageviewone'), // Define route
                    ]),
                    AutoRoute(page: StatusRoute.page)
                  ])
            ]),
        CustomRoute(path: '/*', page: RouteNotFound.page),

        CustomRoute(
          page: AccountDetailsRoute.page,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          durationInMilliseconds: 200,
        ),
        AutoRoute(page: AutoTabsScaffoldRoute.page, children: [
          AutoRoute(page: Tab1Route.page),
          AutoRoute(page: Tab2Route.page),
          AutoRoute(page: Tab3Route.page),
        ]),
        AutoRoute(
          page: NonAdminRoute.page,
          guards: [RoleBaseGuard(UserRole.user)],
        ),
        AutoRoute(
          page: GuestRoute.page,
        ),
      ];
}

@RoutePage()
class AccountTabsPage extends AutoRouter {
  const AccountTabsPage({super.key});
}

@RoutePage(name: "HomeWithBottomPageRoute")
class HomeWithBottomPage extends AutoRouter {
  const HomeWithBottomPage({super.key});
}

/*

CustomRoute(
page: AccountTabsRoute.page,
path: AppPath.account,
children: [
CustomRoute(page: AccountRoute.page, maintainState: false),
CustomRoute(
page: AccountDetailsRoute.page,
maintainState: false,
transitionsBuilder: TransitionsBuilders.zoomIn,
durationInMilliseconds: 200,
),
]),*/
