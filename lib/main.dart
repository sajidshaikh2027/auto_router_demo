import 'package:auto_router_demo/services/navigations/app_router.dart';
import 'package:auto_router_demo/services/observer/my_observer.dart';
import 'package:auto_router_demo/services/storage/shared_pref.dart';
import 'utils/exports.dart';



final appRouter = AppRouter();
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure binding is initialized
  await SharedPref.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter.config(
        navigatorObservers: () => [
          AutoRouterObserver(),
          MyObserver(),
        ],
      ),
    );
  }
}
