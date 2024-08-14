import '../../utils/exports.dart';

@RoutePage(name: "Tab1PageRout")
class Tab1Page extends StatelessWidget {

  final String? tab1;
  const Tab1Page({super.key, this.tab1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(tab1 ?? "",style: const TextStyle(
          fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).push(UserDetailsPageRoute(id: 1));
          },
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}
