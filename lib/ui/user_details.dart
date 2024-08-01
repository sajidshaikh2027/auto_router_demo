import '../utils/exports.dart';

@RoutePage()
class UserDetails extends StatelessWidget {
  final Datum user;
  const UserDetails({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${user.firstName} ${user.lastName}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(user.avatar),
            const SizedBox(height: 16),
            Text(
              '${user.firstName} ${user.lastName}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(user.email, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
