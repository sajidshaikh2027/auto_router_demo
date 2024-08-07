import 'utils/exports.dart';

final appRouter = MyAppRouter();

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
          //  AutoRouterObserver(),
          MyObserver(),
        ],
      ),
    );
  }
}
