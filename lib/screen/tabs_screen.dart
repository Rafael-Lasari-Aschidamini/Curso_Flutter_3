import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScrennIndex = 0;

  final List<Map<String, Object>> _screens = [
    {'title': 'Lista Categorias', 'screen': const CategoriesScreen()},
    {'title': 'Meus Favoritos', 'screen': const FavoriteScreen()},
  ];

  _selectScreen(int index) {
    setState(
      () {
        _selectedScrennIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: const Align(
    //         child: Text(
    //           'Vamos Cosinhar?',
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //       bottom: const TabBar(
    //         tabs: [
    //           Tab(
    //             icon: Icon(Icons.category),
    //             text: 'Categorias',
    //           ),
    //           Tab(
    //             icon: Icon(Icons.star),
    //             text: 'Favoritos',
    //           ),
    //         ],
    //       ),
    //     ),
    //     body: const TabBarView(children: [
    //       CategoriesScreen(),
    //       FavoriteScreen(),
    //     ]),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            _screens[_selectedScrennIndex]['title'] as String,
          ),
        ),
      ),
      drawer: const MainDrawer(),
      body: _screens[_selectedScrennIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        // backgroundColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.primary,

        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScrennIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.category),
            label: ('Categorias'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.star),
            label: ('Favoritos'),
          )
        ],
      ),
    );
  }
}
