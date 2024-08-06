import '../utils/exports.dart';

@RoutePage()
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: const [ChatRoute(), StatusRoute()],
        builder: (context, child, controller) {
          //final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("Text"),
              centerTitle: true,
              bottom: TabBar(controller: controller, tabs: const [
                Tab(
                  icon: Icon(Icons.chat),
                  text: "chats",
                ),
                Tab(
                  icon: Icon(Icons.table_restaurant_sharp),
                  text: "Status",
                )
              ]),
            ),
            body: child,
          );
        });
  }
}
