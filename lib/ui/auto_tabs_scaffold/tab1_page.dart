
import '../../utils/exports.dart';

@RoutePage()
class Tab1Page extends StatelessWidget {
  const Tab1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: const Center(child: Text('Content of Tab 1')),
    );
  }
}
