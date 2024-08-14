import '../../utils/exports.dart';

@RoutePage(name: "UserDashboardPageRoute")
class UserDashboardPage extends StatelessWidget {
  const UserDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes:  [Tab1PageRout(tab1: "Title"), Tab2PageRoute()],
        builder: (context, child, controller) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text("User Dashboard"),
              centerTitle: true,
              bottom: TabBar(controller: controller, tabs:  [
                Tab(
                  icon: Icon(Icons.chat),
                  text: "Tab1",
                ),
                Tab(
                  icon: Icon(Icons.table_restaurant_sharp),
                  text: "Tab2",
                )
              ]),
            ),
            body: child,
          );
        });
  }
}


// Accessing the Right Router
// In this example, the DashboardPage is the root-level route.
// If you call AutoRouter.of(context) inside DashboardPage, it will give you the root routing controller.
//
// However, when you're inside a nested route, like Tab1Page or Tab2Page,
// calling AutoRouter.of(context) will give you the routing controller for that specific tab, not the root controller.
//
// Here’s what happens when you press the "Go to Details" button in Tab1Page:
//
// The AutoRouter.of(context) call inside Tab1Page gets the routing controller scoped to Tab1Page.
// It then pushes the DetailsRoute onto the stack of Tab1Page.
// This means you can navigate within Tab1Page without affecting the stack of Tab2Page or the root dashboard.
// 3. Nested Routing in Action
// This is how you "Find The Right Router":
//
// Root Router: In DashboardPage, AutoRouter.of(context) gives you the root router,
// which controls the entire app's stack.
// Tab Router: In Tab1Page or Tab2Page, AutoRouter.of(context)
// gives you the router for that specific tab, allowing you to manage navigation within that tab's stack independently
