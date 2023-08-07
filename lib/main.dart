import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          canvasColor: Colors.blue.shade50,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.orange,
              primary: Colors.orange,
              secondary: Colors.orange.shade400),
          fontFamily: "Raleway",
          textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                  fontSize: 20, fontFamily: 'RobotoCondensed'))),
      home: const CategoriesScreen(),
    );
  }
}
