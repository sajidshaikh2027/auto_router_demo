import '../../../utils/exports.dart';

@RoutePage()
class ScreenNavigationHome extends StatefulWidget {
  const ScreenNavigationHome({super.key});

  @override
  ScreenNavigationHomeState createState() => ScreenNavigationHomeState();
}

class ScreenNavigationHomeState extends State<ScreenNavigationHome> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _empNoController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _idController,
              decoration: const InputDecoration(
                labelText: 'Enter ID',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _empNoController,
              decoration: const InputDecoration(
                labelText: 'Enter Employee Number',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Enter Name',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          _buildNavigationButton(
            context: context,
            onPressed: () {
              // Navigate to ScreenDetails with the input values
              context.router.push(RouteDetails(
                id: _idController.text,
                empNo: _empNoController.text,
                name: _nameController.text,
              ));
            },
            text: 'Submit',
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
