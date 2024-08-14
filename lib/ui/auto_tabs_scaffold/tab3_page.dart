
import '../../utils/exports.dart';

@RoutePage()
class Tab3Page extends StatelessWidget {
  const Tab3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
      centerTitle: true,
      // leading:  AutoLeadingButton(
      //     builder: (context, leadingType, action) {
      //       return IconButton(
      //         icon: const Icon(Icons.arrow_back),
      //         onPressed: () {
      //           context.tabsRouter.setActiveIndex(1); // Navigate back to Tab 2
      //           // appRouter.back();
      //         },
      //       );
      //     }
      // ),
    ),
      body: const Center(child: Text('Content of Tab 3')),
    );
  }
}
