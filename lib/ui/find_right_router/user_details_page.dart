import '../../utils/exports.dart';

@RoutePage(name: "UserDetailsPageRoute")
class UserDetailsPage extends StatelessWidget {
  final int id;
  const UserDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Page $id')),
      body: Center(child: Text('Details of item $id')),
    );
  }
}
