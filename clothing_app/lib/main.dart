import 'package:clothing_app/screens/details.dart';
import 'package:clothing_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothing App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) =>const Home(),
        "/details":(context)=>const ClothesDetails(),
      },
    );
  }
}
