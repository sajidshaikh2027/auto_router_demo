import '../../utils/exports.dart';
import 'app_routes.gr.dart';

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
                  maintainState: false,
                  children: [
                    CustomRoute(page: AccountRoute.page, maintainState: false),
                    CustomRoute(
                        page: AccountDetailsRoute.page, maintainState: false),
                  ])
            ]),
      ];
}

@RoutePage()
class AccountTabsPage extends AutoRouter {
  const AccountTabsPage({super.key});
}
