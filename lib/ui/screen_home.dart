import '../utils/exports.dart';

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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            _buildNavigationButton(
              context: context,
              onPressed: () {
                context.router.push(const RouteA());
              },
              text: "Navigation between two Screens",
            ),
            _buildNavigationButton(
              context: context,
              onPressed: () {
                AutoRouter.of(context).push(RouteNavigationHome());
              },
              text: "Navigation With different Argument",
            ),
            _buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push(const LoginRoute());
              },
              text: "Context Less Navigation",
            ),
            _buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push(const RouteNotFound());
              },
              text: "Wildcards - Page not Found",
            ),
            _buildNavigationButton(
              context: context,
              onPressed: () {
                // appRouter.push(RouteNavigationHome());
              },
              text: "Route Guards",
            ),
            _buildNavigationButton(
              context: context,
              onPressed: () {
                appRouter.push(const AutoTabsScaffoldRoute());
              },
              text: "AutoTabsScaffold",
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildNavigationButton({
  required BuildContext context,
  required VoidCallback onPressed,
  required String text,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
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
