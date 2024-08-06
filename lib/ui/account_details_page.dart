import '../utils/exports.dart';

@RoutePage()
class AccountDetailsPage extends StatelessWidget {
  const AccountDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AutoLeadingButton(

        ),
      ),
      body: const Center(
        child: Text("Account details screen"),
      ),
    );
  }
}