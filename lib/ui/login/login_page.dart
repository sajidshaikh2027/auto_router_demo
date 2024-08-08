import '../../utils/exports.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              SharedPref.setBool("isLoggedInKey", true);
              context.router.replace(const Dashboard());
            },
            child: const Text("Login button")),
      ),
    );
  }
}
