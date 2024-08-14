import '../../utils/exports.dart';

@RoutePage()
class AutoTabsScaffoldPage extends StatelessWidget {
  const AutoTabsScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(

      routes: const [
        Tab1Route(),
        Tab2Route(),
        Tab3Route(),
      ],
      appBarBuilder: (context, tabsRouter) => AppBar(
        centerTitle: true,
        title: const Text(
          'Tabs Example',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),

        leading: tabsRouter.canNavigateBack ? IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (tabsRouter.activeIndex > 0) {
              tabsRouter.setActiveIndex(tabsRouter.activeIndex - 1);
            } else {
              tabsRouter.maybePop();
            }
          },
        )
            : null,
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tab 1'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tab 2'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Tab 3'),
          ],
        );
      },
    );
  }
}


// @RoutePage()
// class AutoTabsScaffoldPage extends StatelessWidget {
//   const AutoTabsScaffoldPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AutoTabsScaffold(
//       routes: const [
//           Tab1Route(),
//           Tab2Route(),
//           Tab3Route(),
//         ],
//       appBarBuilder: (context, tabsRouter) => AppBar(
//
//         centerTitle: true,
//         title: const Text('Tabs Example',
//             style: TextStyle(
//                 fontSize: 22,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold),),
//       ),
//
//
//
//       bottomNavigationBuilder: (context, tabsRouter) {
//         return
//           BottomNavigationBar(
//           currentIndex: tabsRouter.activeIndex,
//           onTap: tabsRouter.setActiveIndex,
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tab 1'),
//             BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tab 2'),
//             BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Tab 3'),
//           ],
//         );
//       },
//     );
//   }
// }