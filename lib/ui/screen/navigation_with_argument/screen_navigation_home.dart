import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../services/navigations/app_router.gr.dart';

@RoutePage()
class ScreenNavigationHome extends StatelessWidget {
   ScreenNavigationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Screen - NavigationHome",
            style: TextStyle(fontSize: 22,color: Colors.black,
            fontWeight:FontWeight.bold )),
      ),
      body:
      Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Passing argument
                context.router.push(RouteDetails(id: '3333'));
              },
              child: const Text('Go to Details Screen using Argument',style: TextStyle(fontSize: 18,color: Colors.black),)
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Passing query parameter
                context.router.push(RouteDetails(query: const {'emp_no': '3333','name': 'Anil Thummar',}));
              },
              child: const Text('Go to Details Screen using Query Parameter',style: TextStyle(fontSize: 18,color: Colors.black),)
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Passing path parameter
                context.router.push(RouteDetails(path: '/details/3333'));
              },
              child: const Text('Go to Details Screen using Path Parameter',style: TextStyle(fontSize: 18,color: Colors.black),)
            ),
          ],
        ),
      ),
    );
  }
}
