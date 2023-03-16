import 'package:flutter/material.dart';
import 'screen/settings_screen.dart';
import 'screen/categoris_meals_screen.dart';
import 'utils/app_routers.dart';
import 'screen/mael_detail_screen.dart';
import 'screen/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
          // background: Colors.pink,
          // onPrimary: Colors.pink,
        ),
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineSmall:
                  const TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIS_MAELS: (ctx) => const CategorisMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => const MaelDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => const SettingsScreen(),
      },
    );
  }
}
