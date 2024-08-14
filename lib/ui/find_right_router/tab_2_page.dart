import '../../utils/exports.dart';

@RoutePage(name: "Tab2PageRoute")
class Tab2Page extends StatelessWidget {

  const Tab2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tab 2', style: TextStyle(
          fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.bold))),
      body: const Center(child: Text('Tab 2 Content')),
    );
  }
}