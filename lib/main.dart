import 'package:flutter/material.dart';
import 'package:food_app/home.dart';
import 'package:food_app/store_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => StoreModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4),
          useMaterial3: true,
          splashColor: Colors.transparent),
      home: const HomeScreen(),
    );
  }
}
