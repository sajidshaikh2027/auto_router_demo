import '../../../utils/exports.dart';

@RoutePage()
class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Status"),
      ),
    );
  }
}
