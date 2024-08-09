import '../../utils/exports.dart';

@RoutePage(name: "UserProfileRoute")
class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'User Profile',
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text('User Profile Screen'),
      ),
    );
  }
}
