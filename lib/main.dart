import 'package:flutter/material.dart';
import 'views/home_view.dart';
import 'views/tasbeh_view.dart';

void main() {
  runApp(const SebhaApp());
}

class SebhaApp extends StatefulWidget {
  const SebhaApp({super.key});

  @override
  State<SebhaApp> createState() => _SebhaAppState();
}

class _SebhaAppState extends State<SebhaApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'homeView': (context) => HomeView(),
        'tasbehView': (context) => TasbehView()
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: HomeView(),
      ),
    );
  }
}
