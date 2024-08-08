import 'package:auto_router_demo/ui/settings/tabs/widget/simple_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';

@RoutePage()
class PageViewOne extends StatelessWidget {
  final String title;
  final String description;

  const PageViewOne(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SimpleCard(
      title: title,
      description: description,
    );
  }
}
