import '../../utils/exports.dart';
import 'authentication_middleware.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
          guards: [AuthenticationMiddleWare()],
        ),
        CustomRoute(
            page: Dashboard.page,
            path: AppPath.dashboard,
            maintainState: false,
            children: [
              CustomRoute(
                  page: HomeWithBottomRoute.page,
                  path: AppPath.home,
                  children: [
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
              ),
              AutoRoute(
                  page: SettingRoute.page,
                  path: AppPath.setting,
                  children: [
                    AutoRoute(
                      page: ChatRoute.page,
                    ),
                    AutoRoute(page: StatusRoute.page)
                  ])
            ]),
        CustomRoute(
          page: AccountDetailsRoute.page,
          maintainState: false,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          durationInMilliseconds: 200,
        ),
        /*CustomRoute(
            page: UserDetails.page,
            transitionsBuilder: TransitionsBuilders.zoomIn,
            durationInMilliseconds: 100),*/
        CustomRoute(path: '/*', page: RouteNotFound.page),
      ];
}

@RoutePage()
class AccountTabsPage extends AutoRouter {
  const AccountTabsPage({super.key});
}

@RoutePage()
class HomeWithBottomPage extends AutoRouter {
  const HomeWithBottomPage({super.key});
}
