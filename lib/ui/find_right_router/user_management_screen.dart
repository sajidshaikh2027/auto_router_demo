import '../../utils/exports.dart';

@RoutePage(name: "UserManagementRoute")
class UserManagementScreen extends StatelessWidget {
  const UserManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'User UserManagementScreen',
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text('User UserManagementScreen Screen'),
      ),
    );
  }
}
