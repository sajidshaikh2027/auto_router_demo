# auto_router_demo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



//generating auto generating files
flutter pub run build_runner build --delete-conflicting-outputs

flutter pub run build_runner build




The points that needs to be cover in autoroute session

**1. Process of generating AutoRoute
2. Difference between AutoRoute and CustomRoute
3. Navigation between two screens using Navigation using argument, query and path parameter
4. Context less navigation
5. Wildcards and Route Guards 
6. Difference between AutoRoute and CustomRoute
7. AutoTabsRouter pageView
8. AutoTabsRouter TabView
9. AutoTabsScaffold with AutoLeadingButton-BackButton
10. Deeplinking (Just provide the overview of it, No need to create demo for it)**


1. **dependencies**:
   auto_route: ^version
   auto_route_generator: ^version
   dev_dependencies:
   build_runner: ^version

2. *dart run build_runner build --delete-conflicting-outputs*
3. Create Screen like -Screen-A,B,C
4. After that add  *(@**RoutePage**)* Annotation every page (Screen -A,B,C)
5. Now again Generate routes using dart run build_runner build --delete-conflicting-outputs command
6. *Config app route to your main app*   
   {
   final MyAppRouter appRouter=MyAppRouter();

return MaterialApp.router (

debugShowCheckedModeBanner: false,
routerConfig: appRouter.config(),
);
}
