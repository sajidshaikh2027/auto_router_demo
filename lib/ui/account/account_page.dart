import '../../utils/exports.dart';

@RoutePage()
class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Account Tab",
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.router.push(const AccountDetailsRoute());
              },
              child: const Text("Go to Account Profile"),
            ),
          ),
        ],
      ),
    );
  }
}
