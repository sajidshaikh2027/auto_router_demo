
import '../../../utils/exports.dart';


@RoutePage()
class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("Screen - A",
            style: TextStyle(fontSize: 22,color: Colors.black,
            fontWeight:FontWeight.bold )),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              print("current_name Screen A : ${context.router.current.path}");

              // context.router.push(const RouteB());

              // Navigate to DetailPage and await the result
              final result = await context.router.push(RouteB(),);
              // var result = await appRouter.push<bool>(RouteB());


              // Handle the result
              if (result != null && result is bool)  {
                print("Result: $result");

                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(content: Text('Result: $result')),
                // );
              }


              // Navigate to Screen B with arguments

              // Navigate to Screen B with Query Parameters

              // Navigate to Screen B with Using Path Parameters
              // context.router.push(RouteB(id: '123'));

              //adds a new entry to the pages stack
              // context.router.push(const RouteB());
              // or by using paths
              // context.router.pushNamed('/route-b');


            },
            child: const Text("Navigate From A to B",style: TextStyle(fontSize: 18,color: Colors.black),)),
      ),
    );
  }
}
