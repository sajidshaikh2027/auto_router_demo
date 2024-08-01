import 'package:auto_router_demo/services/navigations/app_routes.gr.dart';

import '../utils/exports.dart';

@RoutePage()
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        routes: const [HomeRoute(), AccountRoute()],
        bottomNavigationBuilder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return BottomNavigationBar(
            backgroundColor: Colors.white,
            iconSize: 20,
            selectedItemColor: Colors.red,
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home_max_outlined),
                label: "Home",
                tooltip: 'Go to Home', // Tooltip for accessibility
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                activeIcon: Icon(Icons.account_box_outlined),
                label: "Account",
                tooltip: 'Go to Account', // Tooltip for accessibility
              ),
            ],
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
          );
        });
  }
}
