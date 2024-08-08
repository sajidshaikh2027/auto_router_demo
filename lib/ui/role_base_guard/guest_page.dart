import '../../utils/exports.dart';

@RoutePage()
class GuestPage extends StatelessWidget {
  const GuestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("Guest Page",
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
      body: const Center(
        child: Text(
          "Guest Page",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
