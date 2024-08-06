import '../../utils/exports.dart';
import 'authentication_middleware.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: AppPath.login,
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
                      title: (ctx, data) {
                        return 'User Details Details ${data.pathParams.get('id')}';
                      },
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
                    AutoRoute(
                      page: ChatRoute.page,
                    ),
                    AutoRoute(page: StatusRoute.page)
                  ])
            ]),
        CustomRoute(path: '/*', page: RouteNotFound.page),
        CustomRoute(
          page: AccountDetailsRoute.page,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          durationInMilliseconds: 200,
        ),
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
