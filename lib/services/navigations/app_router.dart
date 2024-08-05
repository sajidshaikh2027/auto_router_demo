import '../../utils/exports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: Dashboard.page,
            maintainState: false,
            initial: true,
            children: [
              CustomRoute(
                  page: HomeNavigationRoute.page,
                  path: AppPath.home,
                  children: [
                    CustomRoute(
                      page: HomeRoute.page,
                    ),
                    CustomRoute(
                      page: UserDetails.page,

                    ),
                  ]),
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
                  ]),
              AutoRoute(
                  page: SettingRoute.page,
                  path: AppPath.setting,
                  maintainState: false,
                  children: [
                    AutoRoute(
                      page: ChatRoute.page,
                    ),
                    AutoRoute(page: StatusRoute.page)
                  ])
            ]),
      ];
}

@RoutePage()
class AccountTabsPage extends AutoRouter {
  const AccountTabsPage({super.key});
}
