import 'package:flutter/material.dart';
import 'package:music_app/screens/homescreen.dart';
//import 'package:music_app/theme/dark_mode.dart';
//import 'package:music_app/theme/light_mode.dart';
import 'package:music_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
