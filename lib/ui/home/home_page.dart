import '../../utils/exports.dart';


@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Datum> users = []; //// Change List<User> to List<Datum>
  bool isLoading = true; // Add a loading state

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: isLoading // Check if loading
                ? const Center(
                    child:
                        CircularProgressIndicator(), // Show loading indicator
                  )
                : ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return Card(
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          onTap: () async {
                            print("on tap");
                            var result = await context.router.push(UserDetails(user: user));
                            // Handle the result
                            if (result != null && result is Datum) {
                              print(
                                  'Result from UserDetails: ${result.firstName}');
                            }
                          },
                          leading: Image.network(user.avatar),
                          title: Text('${user.firstName} ${user.lastName}'),
                          subtitle: Text(user.email),
                        ),
                      );
                    },
                  ),
          ),


          /*If user switch new tab bottom view*/
          /*buildNavigationButton(
            context: context,
            onPressed: () {
              context.navigateTo(const AccountRoute(
                children: [
                  AccountDetailsRoute()
                ]
              ));
            },
            text: "Cross-tab Navigation",
          ),*/
        ],
      ),
    );
  }

  void fetchData() async {
    var response = await DioClient().apiCall(
      url: 'https://reqres.in/api/users?page=2',
      requestType: RequestType.get,
    );
    if (response.statusCode == 200) {
      var jsonResponse =
          response.data; // Assuming response.data is already a map
      User user = User.fromJson(
          jsonResponse); // Use the fromJson method to create a User object

      if (mounted) {
        setState(() {
          users = user.data;
          isLoading = false; // Set loading to false after data is fetched
        });
      }
    } else {
      print('Failed to load data');
      if (mounted) {
        setState(() {
          isLoading = false; // Set loading to false even if there's an error
        });
      }
    }
  }
}
