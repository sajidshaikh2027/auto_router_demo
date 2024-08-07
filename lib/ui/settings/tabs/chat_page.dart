import 'package:auto_router_demo/ui/settings/tabs/widget/simple_card.dart';
import '../../../utils/exports.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    // PageController pageController = PageController();

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

              // Convert to List
            ),
          ),
        ],
      ),
    );
  }
}

/*builder: (context, child, controller) {
pageController = controller;
return child;
},*/

/*
ElevatedButton(
onPressed: () {
// Manually navigate to the next tab
if (pageController.hasClients) {
pageController.nextPage(
duration: const Duration(milliseconds: 300),
curve: Curves.easeInOut,
);
}
},
child: const Text("Next Page"),
),*/
