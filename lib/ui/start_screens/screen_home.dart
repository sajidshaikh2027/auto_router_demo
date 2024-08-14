import '../../../utils/exports.dart';

@RoutePage()
class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Auto Route',
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
      body:
      Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            buildNavigationButton(
              context: context,
              onPressed: () {
                context.router.push(const RouteA());
              },
              text: "Navigation between two Screens",
            ),
            buildNavigationButton(
              context: context,
              onPressed: () {
                context.router.push(const RouteNavigationHome());
              },
              text: "Navigation With different Argument",
            ),
            buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push(const LoginRoute());
              },
              text: "Context Less Navigation",
            ),
            buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push(const RouteNotFound());
              },
              text: "Wildcards - Page not Found",
            ),

            buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push(const AutoTabsScaffoldRoute());
              },
              text: "AutoTabsScaffold",
            ),
            buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push(const NonAdminRoute());
              },
              text: "Route Guards",
            ),
            buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push( UserDashboardPageRoute());
              },
              text: "Finding The Right Router",
            ),
            buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push( DeepLinkingRoute(token: '123'));
                // appRouter.pushNamed("/DeepLinkRoute/123");

              },
              text: "Deeplink",
            ),

            buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push( const AccountDetailsRoute());

              },
              text: "Track Routes History",
            ),


          ],
        ),
      ),
    );
  }
}
Widget buildNavigationButton({
  required BuildContext context,
  required VoidCallback onPressed,
  required String text,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    ),
  );
}
