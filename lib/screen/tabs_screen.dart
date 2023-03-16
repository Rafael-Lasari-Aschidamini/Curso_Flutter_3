import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
        title: Text(
          _screens[_selectedScrennIndex]['title'] as String,
        ),
      ),
      body: _screens[_selectedScrennIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Colors.pink,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScrennIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.category),
            label: ('Categorias'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.star),
            label: ('Favoritos'),
          )
        ],
      ),
    );
  }
}
