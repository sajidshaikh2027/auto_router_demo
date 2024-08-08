import '../../utils/exports.dart';


@RoutePage(name: 'PageFoundRoute')
class PageFound extends StatelessWidget {

  final String userId;

  const PageFound({super.key, @PathParam('userId') required this.userId,});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Text(" URL like /profile/123, where $userId is the dynamic segment captured by the wildcard"),
      ),
    );
  }
}
