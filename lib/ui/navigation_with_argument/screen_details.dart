import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_router_demo/main.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenDetails extends StatelessWidget {
  final String? id;
  final String? empNo;
  final String? name;

  const ScreenDetails({
    Key? key,
    @PathParam('id') this.id, // Extracts 'id' from the path
    @QueryParam('emp_no') this.empNo, // Extracts 'emp_no' from query parameters
    @QueryParam('name') this.name, // Extracts 'name' from query parameters
  }) : super(key: key);

  // ScreenDetails({
  //   @pathParam this.id = '1111', // Default path parameter with a default value
  //   @queryParam this.query, // Query parameters as a map
  //   @pathParam this.path, // Path as a string
  // });




  @override
  Widget build(BuildContext context) {
    print("current_name ScreenDetails : ${appRouter.current.path}");
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("Screen - Details",
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Argument-: ID: ${id ?? ''}',
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Parameter Query- Employee Number: ${empNo ??''}',
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Parameter Query- EmployeeName: ${name??''}',
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Path Parameter-: ${name??''}',
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
