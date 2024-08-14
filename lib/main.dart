import 'package:auto_router_demo/utils/firebase_options.dart';

import 'utils/exports.dart';

final appRouter = MyAppRouter();

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("Handling a background message: ${message.messageId}");
}


void main() async {

  WidgetsFlutterBinding.ensureInitialized(); // Ensure binding is initialized
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  print('User granted permission: ${settings.authorizationStatus}');

  // Listneing to the foreground messages
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });

  String? token = await messaging.getToken();
  print('Token: $token');

  await SharedPref.init();
  printAllRoutes();
  runApp( const MyApp());
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

        //Observer
        navigatorObservers: () => [
          //  AutoRouterObserver(),
          MyObserver(),
        ],

        // Deep Linking config
        deepLinkBuilder: (deepLink) {
          if (deepLink.path.startsWith('/products')) {
            return deepLink;
          } else {
            return DeepLink.defaultPath;
            // or DeepLink.path('/')
            // or DeepLink([HomeRoute()])
          }
        },

      ),
    );
  }
}

void printAllRoutes() {
  // Access all routes
  final routes = appRouter.routes;
  for (final route in routes) {
    print('Route name: ${route.name}');
  }
}


