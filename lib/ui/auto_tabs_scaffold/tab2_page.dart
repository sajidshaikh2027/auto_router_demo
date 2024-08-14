
import '../../utils/exports.dart';

@RoutePage()
class Tab2Page extends StatelessWidget {
  const Tab2Page({super.key});

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
        //           context.tabsRouter.setActiveIndex(0); // Navigate back to Tab 1
        //         },
        //       );
        //     }
        // ),
      ),
      body: const Center(child: Text('Content of Tab 2')),
    );
  }
}
