
import '../../../utils/exports.dart';

@RoutePage()
class ScreenB extends StatelessWidget implements AutoRouteWrapper{
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
   return wrappedRoute(context);
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: const Text("Screen - B",style: TextStyle(fontSize: 22,color: Colors.black,
          fontWeight:FontWeight.bold ))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {

                  print("current_name Screen B : ${context.router.current.path}");
                  // AutoRouter.of(context).push(const RouteC());
                  context.router.push(const RouteC());
                  // context.router.pushNamed('/route-c');


                  // removes last entry in stack and pushes provided route
                  // if last entry == provided route page will just be updated

                  // context.router.replace(const RouteC());
                  // context.router.replaceNamed('/route-c');

                  // pops until provided route, if it already exists in stack
                  // else adds it to the stack (good for web Apps).
                  // context.router.navigate(const RouteC());
                  // or by using paths
                  // context.router.navigateNamed('/route-c');

                  // on Web it calls window.history.back(); on Native it navigates you back to the previous location
                  // context.router.back();


                },
                child: const Text("Navigate From B to C",style: TextStyle(fontSize: 18,color: Colors.black),)),
            const SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {

                  print("current_name Screen B : ${context.router.current.path}");

                  // on Web it calls window.history.back(); on Native it navigates you back to the previous location
                  // context.router.maybePop('This is the result!');
                  appRouter.maybePop(true);
                  // context.router.back();


                },
                child: const Text("Navigate back to previous location ",style: TextStyle(fontSize: 18,color: Colors.black),)),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return
  //     Scaffold(
  //     backgroundColor: Colors.yellow,
  //     appBar: AppBar(title: const Text("Screen - B",style: TextStyle(fontSize: 22,color: Colors.black,
  //         fontWeight:FontWeight.bold ))),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           const SizedBox(height: 10,),
  //           ElevatedButton(
  //               onPressed: () {
  //
  //                 print("current_name Screen B : ${context.router.current.path}");
  //                 // AutoRouter.of(context).push(const RouteC());
  //                 context.router.push(const RouteC());
  //                 // context.router.pushNamed('/route-c');
  //
  //
  //                 // removes last entry in stack and pushes provided route
  //                   // if last entry == provided route page will just be updated
  //
  //                 // context.router.replace(const RouteC());
  //                 // context.router.replaceNamed('/route-c');
  //
  //                 // pops until provided route, if it already exists in stack
  //                 // else adds it to the stack (good for web Apps).
  //                 // context.router.navigate(const RouteC());
  //                 // or by using paths
  //                 // context.router.navigateNamed('/route-c');
  //
  //                 // on Web it calls window.history.back(); on Native it navigates you back to the previous location
  //                 // context.router.back();
  //
  //
  //               },
  //               child: const Text("Navigate From B to C",style: TextStyle(fontSize: 18,color: Colors.black),)),
  //           const SizedBox(height: 10,),
  //           ElevatedButton(
  //               onPressed: () {
  //
  //                 print("current_name Screen B : ${context.router.current.path}");
  //
  //                 // on Web it calls window.history.back(); on Native it navigates you back to the previous location
  //                 context.router.back();
  //
  //
  //               },
  //               child: const Text("Navigate back to previous location ",style: TextStyle(fontSize: 18,color: Colors.black),)),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
