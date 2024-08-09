import '../../utils/exports.dart';

@RoutePage(name: "UserHomeRoute")
class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'User Home',
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.router.push(const UserProfileRoute()),
              child: const Text('Go to User Profile'),
            ),
            ElevatedButton(
              onPressed: () => context.router.push(const UserAdminRoute()),
              child: const Text('Go to User Admin Panel'),
            ),
          ],
        ),
      ),
    );
  }
}
