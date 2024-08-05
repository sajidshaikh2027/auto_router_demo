import '../../services/storage/shared_pref.dart';
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
              print("object");
              SharedPref.setBool("isLoggedInKey", true);
              context.router.replace(Dashboard());
            },
            child: const Text("Login button")),
      ),
    );
  }
}
