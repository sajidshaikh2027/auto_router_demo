import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_router_demo/main.dart';
import 'package:flutter/material.dart';

import '../../services/navigations/app_router.gr.dart';

@RoutePage()
class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Auto Route',
            style: TextStyle(fontSize: 22,color: Colors.black,
            fontWeight:FontWeight.bold )),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                 context.router.push(const RouteA());
                },
                child: const Text("Navigation between two Screens",style:
                TextStyle(fontSize: 18,color: Colors.black),),),
            const SizedBox(height: 5,),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(RouteNavigationHome());
              },
              child: const Text("Navigation With different Argument",
                style: TextStyle(fontSize: 18,color: Colors.black),),),

            const SizedBox(height: 5,),
            ElevatedButton(
              onPressed: () {
                appRouter.push(const LoginRoute());
              },
              child: const Text("Context Less Navigation",
                style: TextStyle(fontSize: 18,color: Colors.black),),),

            const SizedBox(height: 5,),
            ElevatedButton(
              onPressed: () {
                appRouter.push(const RouteNotFound());
              },
              child: const Text("Wildcards - Page not Found ",
                style: TextStyle(fontSize: 18,color: Colors.black),),),

            const SizedBox(height: 5,),
            ElevatedButton(
              onPressed: () {
                appRouter.push(RouteNavigationHome());
              },
              child: const Text("Route Guards",
                style: TextStyle(fontSize: 18,color: Colors.black),),),

          ],
        ),
      ),
    );
  }
}
