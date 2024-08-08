import '../../utils/exports.dart';

@RoutePage()
class NonAdminPage extends StatelessWidget {
  const NonAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("Non Admin Page",
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
      body: const Center(
        child: Text(
          "Non-Admin Page",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
