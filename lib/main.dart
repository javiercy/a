import 'package:flutter/material.dart';
import 'package:proyecto_final/pages/home_page.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Final',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName:(context) => HomePage(),
      },
    );
  }
}