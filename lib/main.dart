import 'package:flutter/material.dart';
import 'package:whoosh/Utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      routerConfig: appRouter,
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.white, // This sets background color for all Scaffolds
      ),
    );
  }
}
