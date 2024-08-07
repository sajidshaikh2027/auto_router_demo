  import 'package:auto_router_demo/ui/settings/tabs/widget/simple_card.dart';
  import 'package:flutter/gestures.dart';
  import '../../../utils/exports.dart';

  @RoutePage()
  class ChatPage extends StatelessWidget {
    const ChatPage({super.key});

    @override
    Widget build(BuildContext context) {
      final List<CardData> cardDataList = [
        CardData(
            title: "Card One",
            description: "This is the description for card one."),
        CardData(
            title: "Card Two",
            description: "This is the description for card two."),
        CardData(
            title: "Card Three",
            description: "This is the description for card three."),
      ];

      return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 150,
              child: AutoTabsRouter.pageView(
                routes: cardDataList
                    .map(
                      (cardData) => RouteViewOne(
                          title: cardData.title,
                          description: cardData.description),
                    )
                    .toList(),
                builder: (context,child, controller){
                  return child;
                },

                // Convert to List
              ),
            ),
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        ),
      );
    }
  }
