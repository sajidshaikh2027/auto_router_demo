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
    return AutoTabsRouter(
        routes: const [HomeRoute(), AccountRoute(), SettingRoute()],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);

          print("active index ${tabsRouter.activeIndex}");

          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
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
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  activeIcon: Icon(Icons.settings_outlined),
                  label: "Settings",
                  tooltip: 'Settings', // Tooltip for accessibility
                ),
              ],
              onTap: (index) {
                print("Tapped index: $index");
                tabsRouter.setActiveIndex(index);
              },
              currentIndex: tabsRouter.activeIndex,
            ),
          );
        });
  }
}

//
/*AutoTabsScaffold(
        routes: const [HomeRoute(), AccountRoute(), SettingRoute()],
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
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                activeIcon: Icon(Icons.settings_outlined),
                label: "Settings",
                tooltip: 'Settings', // Tooltip for accessibility
              ),
            ],
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
          );
        });*/

/*

AutoTabsRouter.pageView(
routes: const [HomeRoute(), AccountRoute(), SettingRoute()],
builder: (context, child, controller) {
final tabsRouter = AutoTabsRouter.of(context);
return Scaffold(
body: child,
bottomNavigationBar: BottomNavigationBar(
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
BottomNavigationBarItem(
icon: Icon(Icons.settings),
activeIcon: Icon(Icons.settings_outlined),
label: "Settings",
tooltip: 'Settings', // Tooltip for accessibility
),
],
currentIndex: tabsRouter.activeIndex,
onTap: tabsRouter.setActiveIndex,
));
},
)*/
