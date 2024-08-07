import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Tab1Page extends StatelessWidget {
  const Tab1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: const AutoLeadingButton(),
      ),
      body: const Center(child: Text('Content of Tab 1')),
    );
  }
}
