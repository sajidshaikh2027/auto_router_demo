import '../../utils/exports.dart';

@RoutePage(deferredLoading: true)
class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
          automaticallyImplyLeading: true,
          leading: AutoLeadingButton(
            builder: (context, leadingType, action) {
              return IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.deepPurple),
                onPressed: () {
                  print("pressed : ${appRouter.current.name}");
                  appRouter.back();
                },
              );
            },
          ),),
      body: const Center(
        child: Text("Page not Found"),
      ),
    );
  }
}
