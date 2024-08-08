import '../../utils/exports.dart';

@RoutePage()
class AccountDetailsPage extends StatelessWidget {
  const AccountDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: AutoLeadingButton(
          builder: (context, leadingType, action) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                appRouter.back();
              },
            );
          },
        ),),
      body: const Center(
        child: Text("Account details screen"),
      ),
    );
  }
}
