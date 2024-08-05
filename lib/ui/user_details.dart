import '../utils/exports.dart';

@RoutePage()
class UserDetails extends StatefulWidget {
  final Datum user;

  const UserDetails({super.key, required this.user});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> with AutoRouteAware {
  AutoRouteObserver? _observer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    if (_observer != null) {
      _observer!.subscribe(this, context.routeData);
    }
  }

  @override
  void dispose() {
    _observer?.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPop() {
    print("sajid");
    super.didPop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.user.firstName} ${widget.user.lastName}'),
        leading: AutoLeadingButton(
          builder: (context, leadingType, action) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.router.maybePop(widget.user);
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(widget.user.avatar),
            const SizedBox(height: 16),
            Text(
              '${widget.user.firstName} ${widget.user.lastName}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(widget.user.email, style: const TextStyle(fontSize: 18)),
            /*ElevatedButton(
              onPressed: () {
                context.router.maybePop(user);
              },
              child: Text('Return Result'),
            ),*/
          ],
        ),
      ),
    );
  }
}
