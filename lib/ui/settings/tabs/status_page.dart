import '../../../utils/exports.dart';

@RoutePage()
class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Status"),
             const SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              appRouter.push(const AccountDetailsRoute());
            }, child: const Text("Go to Account page"))
          ],
        ),
      ),
    );
  }
}
