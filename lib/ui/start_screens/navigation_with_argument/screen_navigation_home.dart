import '../../../utils/exports.dart';

@RoutePage()
class ScreenNavigationHome extends StatelessWidget {
  ScreenNavigationHome({super.key});

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
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Passing an argument directly
                context.router.push(RouteDetails(id: '3333'));
              },
              child: const Text(
                'Go to Details Screen using Path Parameter',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Passing query parameters
                context.router.push(RouteDetails(
                  empNo: '3333',
                  name: 'Anil Thummar',
                ));
              },
              child: const Text(
                'Go to Details Screen using Query Parameters',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Passing path parameter
                context.router.push(RouteDetails(
                  id: '23333',
                  empNo: '4444',
                  name: 'John ',
                ));
              },
              child: const Text(
                'Go to Details Screen using Path and Query Parameters',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
