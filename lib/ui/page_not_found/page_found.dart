import '../../utils/exports.dart';


@RoutePage(name: 'PageFoundRoute')
class PageFound extends StatelessWidget {

  final String id;

  const PageFound({super.key, @PathParam('userId') required this.id,});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Text(" URL like /profile/123, where $id is the dynamic segment captured by the wildcard"),
      ),
    );
  }
}
