
import '../../utils/exports.dart';

@RoutePage()
class ScreenNavigationHome extends StatelessWidget {
  const ScreenNavigationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Screen - NavigationHome",
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          _buildNavigationButton(
            context: context,
            onPressed: () {
              context.router.push(RouteDetails(id: '3333'));
            },
            text: 'Go to Details Screen using Argument',
          ),
          _buildNavigationButton(
            context: context,
            onPressed: () {
              context.router.push(RouteDetails(
                empNo: '3333',
                name: 'Anil Thummar',
              ));
            },
            text: 'Go to Details Screen using Query Parameters',
          ),
          _buildNavigationButton(
            context: context,
            onPressed: () {
              context.router.push(RouteDetails(
                id: '123123',
                empNo: '4444',
                name: 'John ',
              ));
            },
            text: 'Go to Details Screen using Path and Query Parameters',
          ),
        ],
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
    padding: const EdgeInsets.symmetric(vertical: 10.0),
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
