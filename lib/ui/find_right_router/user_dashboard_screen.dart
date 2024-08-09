import '../../utils/exports.dart';

@RoutePage(name: "UserDashboardRoute")
class UserDashboardScreen extends StatelessWidget {
  const UserDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'User Dashboard',
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text('User Dashboard Screen'),
      ),
    );
  }
}
