
import '../../utils/exports.dart';

@RoutePage()
class Tab1Page extends StatelessWidget {
  const Tab1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        leading:  AutoLeadingButton(
            builder: (context, leadingType, action) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  appRouter.back();
                },
              );
            }
        ),
      ),
      body: const Center(child: Text('Content of Tab 1')),
    );
  }
}
