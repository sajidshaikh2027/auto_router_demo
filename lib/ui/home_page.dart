import 'package:auto_router_demo/services/navigations/app_routes.gr.dart';
import '../utils/exports.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Datum> users = []; // Change List<User> to List<Datum>
  var selectedIndex = 0;

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
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    onTap: () {
                      print("on tap");
                      context.router.push(UserDetails(user: user));
                    },
                    leading: Image.network(user.avatar),
                    title: Text('${user.firstName} ${user.lastName}'),
                    subtitle: Text(user.email),
                  ),
                );
              },
            ),
          ),
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
        });
      }
      print(user.data[0].firstName);
    } else {
      print('Failed to load data');
    }
  }
}
