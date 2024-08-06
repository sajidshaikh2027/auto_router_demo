import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenDetails extends StatelessWidget {
  final String? id;
  final Map<String, dynamic>? query;
  final String? path;

  ScreenDetails({this.id, @queryParam this.query, @pathParam this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Screen - Details",
            style: TextStyle(fontSize: 22,color: Colors.black,
                fontWeight:FontWeight.bold )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Argument-: ID: $id',style: const TextStyle(fontSize: 18,color: Colors.black),),
            const SizedBox(height: 10,),
            Text('Parameter Query- NO: ${query?['emp_no']},Name:${query?['name']}',style: const TextStyle(fontSize: 18,color: Colors.black),),
            const SizedBox(height: 10,),
            Text('Path Parameter- : $path',style: const TextStyle(fontSize: 18,color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
