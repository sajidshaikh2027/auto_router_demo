import '../utils/exports.dart';

@RoutePage()
class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Screen - Details",
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        automaticallyImplyLeading: true,
        leading: AutoLeadingButton(),

      ),

      body: const Center(
        child: Text("Page not Found",style: const TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
